import 'dart:async';
import 'package:dine_hive/core/route/app_route_constant.dart';
import 'package:dine_hive/core/services/stripe_service/stripe_key.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:go_router/go_router.dart';

class StripeServices {
  StripeServices._();

  static final StripeServices instance = StripeServices._();

  /// make payment method
  Future<void> makePayment(int amount,BuildContext context) async {
    try {
      String? paymentIntentClientSecret = await _createPaymentIntent(
        amount: amount,
        currency: 'usd',
      );
      if (paymentIntentClientSecret == null) {
        return;
      }
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: paymentIntentClientSecret,
          merchantDisplayName: "Muntasir Mahamud Ashif",
        ),
      );
      await _processPayment(context);
    } catch (e) {
      debugPrint("\nError while making payment : $e\n");
    }
  }

  ///create payment intent
  Future<String?> _createPaymentIntent({required int amount, required String currency,}) async {
    try {
      final Dio dio = Dio();
      Map<String, dynamic> data = {
        "amount": (amount * 100).toString(), /// converting in cent
        "currency": currency,
        "payment_method_types[]": "card",
      };

      final response = await dio.post(
        'https://api.stripe.com/v1/payment_intents',
        data: data,
        options: Options(
          contentType: Headers.formUrlEncodedContentType,
          headers: {
            "Authorization": "Bearer ${StripeKey().stripeSecurityKey}",
            "Content-Type": "application/x-www-form-urlencoded",
          },
        ),
      );

      if (response.data != null) {
        debugPrint("\nresponse : ${response.data}\n");
        return response.data['client_secret'];
      } else {
        return null;
      }
    } catch (error) {
      debugPrint("\nError while creating payment : $error\n");
      return null;
    }
  }

  /// This method open a stripe payment sheet
  /// after that if payment complete navigate to payment successful screen
  Future<void> _processPayment(BuildContext context) async {
    try {
      await Stripe.instance.presentPaymentSheet();
      debugPrint('Payment confirmed! Navigating...');
      if (context.mounted) {
        context.go(AppRouteConstant.paymentSuccessful);
      }
    } catch (error) {
      debugPrint("Error in payment processing: $error");
    }
  }


}
