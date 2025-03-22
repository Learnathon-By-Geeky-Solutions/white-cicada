import 'package:dine_hive/src/features/authentications/forget_password/forget_pass_screen.dart';
import 'package:dine_hive/src/features/authentications/sign_in/sign_in_screen.dart';
import 'package:dine_hive/src/features/authentications/sign_up/sign_up_screen.dart';
import 'package:dine_hive/src/features/user/choose_table/choose_table_screen.dart';
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
            return const MaterialPage(child: ChooseTableScreen());
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
            return const MaterialPage(child: ForgetPassScreen());
          }),
      GoRoute(
          name: 'choose table screen',
          path: '/choose_table_screen',
          pageBuilder: (context, state) {
            return const MaterialPage(child: ChooseTableScreen());
          }),
    ],
  );
}