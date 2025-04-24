import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/constant/images.dart';
import '../../../data/providers/splash_provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///initialize splash timer function in splash provider
    ///which wait 3 second then navigate with user requirement
    Future.microtask(() => context.read<SplashProvider>().splashTimer(context));
    return Scaffold(
      body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.appLogo),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: LinearProgressIndicator(),
                ),
              ],
            ),
          )
      );
  }
}
