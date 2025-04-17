import 'package:dine_hive/src/features/authentications/forget_password/forget_pass_screen.dart';
import 'package:dine_hive/src/features/authentications/sign_up/sign_up_screen.dart';
import 'package:dine_hive/src/features/user/choose_table/choose_table_screen.dart';
import 'package:dine_hive/src/features/user/edit_user_profile_screen/edit_user_profile_screen.dart';
import 'package:dine_hive/src/features/user/user_profile_screen/user_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:dine_hive/core/constant/texts.dart';
import 'package:dine_hive/core/route/app_route_constant.dart';
import 'package:dine_hive/src/features/user/home_screen/home_screen.dart';
import 'package:dine_hive/src/features/user/restaurant_info_screen/restaurant_info_screen.dart';


class AppRouteConfig {
  GoRouter goRouter = GoRouter(
    initialLocation: AppRouteConstant.initialRoute,
    routes: [
      GoRoute(
          name: AppText.signIn,
          path: '/',
          pageBuilder: (context, state) {
            return const MaterialPage(child: UserProfileScreen());
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

      GoRoute(
          path: AppRouteConstant.signupScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(child: SignUpScreen());
          }),
      GoRoute(
          path: AppRouteConstant.forgotPasswordScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(child: ForgetPassScreen());
          }),
      GoRoute(
          path: AppRouteConstant.homeScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(child: HomeScreen());
          }),
      GoRoute(
          path: AppRouteConstant.restaurantInfoScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(
                child: RestaurantInfoScreen(
              restaurantId: '1',
            ));
          }),
      GoRoute(
        path: AppRouteConstant.editProfileScreen,
        builder: (context, state) => const EditUserProfileScreen(),
      ),

    ],
  );
}