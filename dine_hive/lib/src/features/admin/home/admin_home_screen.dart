import 'package:dine_hive/core/route/app_route_constant.dart';
import 'package:dine_hive/core/services/firebase_service/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Admin Home'),
            const Gap(20),
            TextButton(onPressed: (){
              AuthService authService = AuthService();
              authService.signOut();
              context.go(AppRouteConstant.signInScreen);
            }, child: const Text('Logout'))
          ],
        ),
      ),
    );
  }
}
