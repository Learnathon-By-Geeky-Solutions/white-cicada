import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/route/app_route_constant.dart';
import '../../../../core/services/firebase_service/auth_services.dart';

class SellerHomeScreen extends StatelessWidget {
  const SellerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Seller Home'),
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
