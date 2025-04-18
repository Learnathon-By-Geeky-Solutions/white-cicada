import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/core/widgets/custom_app_bar.dart';
import 'package:dine_hive/src/features/user/payment_gateway_selection_screen/widgets/payment_gateway_option_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PaymentGatewaySelectionScreen extends StatefulWidget {
  const PaymentGatewaySelectionScreen({super.key});

  @override
  State<PaymentGatewaySelectionScreen> createState() =>
      _PaymentGatewaySelectionScreenState();
}

class _PaymentGatewaySelectionScreenState
    extends State<PaymentGatewaySelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSpacing.pagePadding),
        child: Column(
          children: [
            CustomAppBarWidget(appBarTitle: 'Choose Payment Method',),
            Gap(50),
            PaymentGatewayOptionWidget(),
          ],
        ),
      ),
    );
  }
}
