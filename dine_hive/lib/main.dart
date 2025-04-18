import 'package:dine_hive/core/route/app_route_config.dart';
import 'package:dine_hive/core/theme/app_theme.dart';
import 'package:dine_hive/src/data/providers/cart_screen_provider.dart';
import 'package:dine_hive/src/data/providers/confetti_provider.dart';
import 'package:dine_hive/src/data/providers/home_screen_provider.dart';
import 'package:dine_hive/src/data/providers/parent_screen_provider.dart';
import 'package:dine_hive/src/data/providers/payment_option_provider.dart';
import 'package:dine_hive/src/features/user/payment_successful_screen/widgets/payment_successful_animation_widget.dart';
import 'package:dynamic_path_url_strategy/dynamic_path_url_strategy.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  setPathUrlStrategy();
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
