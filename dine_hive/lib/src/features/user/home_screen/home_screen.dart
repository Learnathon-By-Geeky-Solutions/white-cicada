import 'package:flutter/material.dart';
import '../../../../core/constant/key.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/home_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const HomeDrawer(),
      body: const Column(
        children: [
          Row(
            children: [
              HomeAppBar(),
            ],
          )
        ],
      ),
    );
  }
}


