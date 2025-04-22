import 'package:dine_hive/core/route/app_route_config.dart';
import 'package:dine_hive/core/services/stripe_service/stripe_key.dart';
import 'package:dine_hive/core/theme/app_theme.dart';
import 'package:dine_hive/src/data/providers/cart_screen_provider.dart';
import 'package:dine_hive/src/data/providers/confetti_provider.dart';
import 'package:dine_hive/src/data/providers/home_screen_provider.dart';
import 'package:dine_hive/src/data/providers/order_screen_provider.dart';
import 'package:dine_hive/src/data/providers/parent_screen_provider.dart';
import 'package:dine_hive/src/data/providers/payment_option_provider.dart';
import 'package:dine_hive/src/features/user/payment_successful_screen/widgets/payment_successful_animation_widget.dart';
import 'package:dynamic_path_url_strategy/dynamic_path_url_strategy.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:provider/provider.dart';
import 'core/services/firebase_service/firebase_options.dart';

void main()async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = StripeKey().stripePublicKey;
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<HomeScreenProvider>(
      create: (_) => HomeScreenProvider(),
    ),
    ChangeNotifierProvider<ParentScreenProvider>(
      create: (_) => ParentScreenProvider(),
    ),
    ChangeNotifierProvider<CartScreenProvider>(
      create: (_) => CartScreenProvider(),),
    ChangeNotifierProvider<PaymentOptionProvider>(
      create: (_) => PaymentOptionProvider(),
    ),
    ChangeNotifierProvider<ConfettiProvider>(
      create: (_) => ConfettiProvider(),
      child: const PaymentSuccessfulAnimationWidget(),
    ),
    ChangeNotifierProvider<OrderScreenProvider>(
      create: (_) => OrderScreenProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Dine Hive',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      routerConfig: AppRouteConfig().goRouter,
    );
  }
}
