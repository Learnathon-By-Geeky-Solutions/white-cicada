import 'package:dine_hive/src/features/authentications/forget_password/forget_pass_screen.dart';
import 'package:dine_hive/src/features/authentications/sign_in/sign_in_screen.dart';
import 'package:dine_hive/src/features/authentications/sign_up/sign_up_screen.dart';
import 'package:dine_hive/src/features/user/restaurant_info_screen/restaurant_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouteConfig {
  GoRouter goRouter = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
          name: 'sign-in',
          path: '/',
          pageBuilder: (context, state) {
            return const MaterialPage(child: SignInScreen());
          }),
      GoRoute(
          name: 'signup',
          path: '/signup',
          pageBuilder: (context, state) {
            return const MaterialPage(child: SignUpScreen());
          }),

      GoRoute(
          name: 'forgot password',
          path: '/forgot_password',
          pageBuilder: (context, state) {
            return  const MaterialPage(child: ForgetPassScreen());
          }),
      GoRoute(
          name: 'restaurant info screen',
          path: '/restaurant_info',
          pageBuilder: (context, state) {
            return  const MaterialPage(child: RestaurantInfoScreen());
          }),
    ],
  );
}