import 'package:dine_hive/src/features/authentications/forget_password/forget_pass_screen.dart';
import 'package:dine_hive/src/features/authentications/sign_in/sign_in_screen.dart';
import 'package:dine_hive/src/features/authentications/sign_up/sign_up_screen.dart';
import 'package:dine_hive/src/features/user/choose_table/choose_table_screen.dart';
import 'package:dine_hive/src/features/user/edit_user_profile_screen/edit_user_profile_screen.dart';
import 'package:dine_hive/src/features/user/order_screen/order_screen.dart';
import 'package:dine_hive/src/features/user/parent_screen/parent_screen.dart';
import 'package:dine_hive/src/features/user/payment_gateway_selection_screen/payment_gateway_selection_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:dine_hive/core/constant/texts.dart';
import 'package:dine_hive/core/route/app_route_constant.dart';
import 'package:dine_hive/src/features/user/home_screen/home_screen.dart';
import 'package:dine_hive/src/features/user/restaurant_info_screen/restaurant_info_screen.dart';


class AppRouteConfig {
  GoRouter goRouter = GoRouter(
    initialLocation: AppRouteConstant.parentScreen,
    routes: [
      GoRoute(
          name: AppText.signIn,
          path: AppRouteConstant.initialRoute,
          pageBuilder: (context, state) {
            return const MaterialPage(child: SignInScreen());
          }),
      GoRoute(
          name: AppRouteConstant.signupScreen,
          path: AppRouteConstant.signupScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(child: SignUpScreen());
          }),
      GoRoute(
          name: AppRouteConstant.forgotPasswordScreen,
          path: AppRouteConstant.forgotPasswordScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(child: ForgetPassScreen());
          }),
      GoRoute(
          name: AppRouteConstant.chooseTableScreen,
          path: AppRouteConstant.chooseTableScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(child: ChooseTableScreen());
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
      GoRoute(
          name: AppText.parentScreen,
          path: AppRouteConstant.parentScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(child: ParentScreen());
          }),
      GoRoute(
          name: AppRouteConstant.paymentGatewaySelectionScreen,
          path: AppRouteConstant.paymentGatewaySelectionScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(child: PaymentGatewaySelectionScreen());
          }),
      GoRoute(
          name: AppRouteConstant.orderScreen,
          path: AppRouteConstant.orderScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(child: OrderScreen());
          }),
    ],
  );
}