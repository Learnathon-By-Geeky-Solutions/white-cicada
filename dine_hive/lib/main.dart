import 'package:dine_hive/src/data/providers/cart_screen_provider.dart';
import 'package:dine_hive/src/data/providers/choose_table_provider.dart';
import 'package:dine_hive/src/data/providers/confetti_provider.dart';
import 'package:dine_hive/src/data/providers/home_screen_provider.dart';
import 'package:dine_hive/src/data/providers/login_provider.dart';
import 'package:dine_hive/src/data/providers/order_screen_provider.dart';
import 'package:dine_hive/src/data/providers/parent_screen_provider.dart';
import 'package:dine_hive/src/data/providers/payment_option_provider.dart';
import 'package:dine_hive/src/data/providers/qr_scanner_provider.dart';
import 'package:dine_hive/src/data/providers/splash_provider.dart';
import 'package:dine_hive/src/data/providers/user_provider.dart';
import 'package:dynamic_path_url_strategy/dynamic_path_url_strategy.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:provider/provider.dart';
import 'core/route/app_route_config.dart';
import 'core/services/firebase_service/firebase_options.dart';
import 'core/services/stripe_service/stripe_key.dart';
import 'core/theme/app_theme.dart';

void main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = StripeKey().stripePublicKey;
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => HomeScreenProvider()),
    ChangeNotifierProvider(create: (_) => ParentScreenProvider()),
    ChangeNotifierProvider(create: (_) => CartScreenProvider()),
    ChangeNotifierProvider(create: (_) => PaymentOptionProvider()),
    ChangeNotifierProvider(create: (_) => ConfettiProvider()),
    ChangeNotifierProvider(create: (_) => OrderScreenProvider()),
    ChangeNotifierProvider(create: (_) => UserProvider()),
    ChangeNotifierProvider(create: (_) => LoginProvider()),
    ChangeNotifierProvider(create: (_) => SplashProvider()),
    ChangeNotifierProvider(create: (_) => ChooseTableProvider()),
    ChangeNotifierProvider(create: (_) => QrScannerProvider())
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

      //darkTheme: AppTheme.darkTheme,
      routerConfig: AppRouteConfig().goRouter,
    );
  }
}
