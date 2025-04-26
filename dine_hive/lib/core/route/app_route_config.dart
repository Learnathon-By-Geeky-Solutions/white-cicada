import 'package:dine_hive/src/features/admin/home/admin_home_screen.dart';
import 'package:dine_hive/src/features/authentications/splash_screen/splash_screen.dart';
import 'package:dine_hive/src/features/seller/home/seller_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../src/features/authentications/forget_password/forget_pass_screen.dart';
import '../../src/features/authentications/sign_in/sign_in_screen.dart';
import '../../src/features/authentications/sign_up/sign_up_screen.dart';
import '../../src/features/user/choose_table/choose_table_screen.dart';
import '../../src/features/user/edit_user_profile_screen/edit_user_profile_screen.dart';
import '../../src/features/user/home_screen/home_screen.dart';
import '../../src/features/user/order_screen/order_screen.dart';
import '../../src/features/user/parent_screen/parent_screen.dart';
import '../../src/features/user/payment_gateway_selection_screen/payment_gateway_selection_screen.dart';
import '../../src/features/user/payment_successful_screen/payment_successful_screen.dart';
import '../../src/features/user/restaurant_info_screen/restaurant_info_screen.dart';
import '../constant/texts.dart';
import 'app_route_constant.dart';

class AppRouteConfig {
  GoRouter goRouter = GoRouter(
    initialLocation: AppRouteConstant.chooseTableScreen,
    routes: [
      GoRoute(
          name: AppRouteConstant.splashScreen,
          path: AppRouteConstant.initialRoute,
          pageBuilder: (context, state) {
            return const MaterialPage(child: SplashScreen());
          }),
      GoRoute(
          name: AppText.signIn,
          path: AppRouteConstant.signInScreen,
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
      GoRoute(
          name: AppRouteConstant.paymentSuccessful,
          path: AppRouteConstant.paymentSuccessful,
          pageBuilder: (context, state) {
            return const MaterialPage(child: PaymentSuccessfulScreen());
          }),
      GoRoute(
          name: AppRouteConstant.adminHomeScreen,
          path: AppRouteConstant.adminHomeScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(child: AdminHomeScreen());
          }),
      GoRoute(
          name: AppRouteConstant.sellerHomeScreen,
          path: AppRouteConstant.sellerHomeScreen,
          pageBuilder: (context, state) {
            return const MaterialPage(child: SellerHomeScreen());
          }),
    ],
  );
}
