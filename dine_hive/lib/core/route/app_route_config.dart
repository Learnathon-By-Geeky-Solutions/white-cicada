import 'package:dine_hive/src/features/authentications/sign_in/sign_in_screen.dart';
import 'package:dine_hive/src/features/authentications/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



class AppRouteConfig {
  GoRouter goRouter = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
          name: 'sign-up',
          path: '/',
          pageBuilder: (context, state) {
            return const MaterialPage(child: SignUpScreen());
          }),

    ],
  );
}
