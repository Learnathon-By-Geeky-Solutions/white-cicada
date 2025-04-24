import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/constant/key.dart';
import '../../../core/route/app_route_constant.dart';

class SplashProvider extends ChangeNotifier {
  Future<void> splashTimer(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? isLogin = prefs.getBool(AppKeys.isLogin);

    await Future.delayed(const Duration(seconds: 1));

    if (!context.mounted) return;

    if (isLogin == null || isLogin == false) {
      route(context, 'not_login');
    } else {
      final String? role = prefs.getString(AppKeys.userRole);
      route(context, role ?? 'user');
    }
  }

  void route(BuildContext context, String role) {
    final String redirectRoute;

    switch (role) {
      case 'not_login':
        redirectRoute = AppRouteConstant.signInScreen;
        break;
      case 'admin':
        redirectRoute = AppRouteConstant.adminHomeScreen;
        break;
      case 'seller':
        redirectRoute = AppRouteConstant.sellerHomeScreen;
        break;
      default:
        redirectRoute = AppRouteConstant.parentScreen;
    }

    if (context.mounted) {
      context.go(redirectRoute);
    }
  }
}
