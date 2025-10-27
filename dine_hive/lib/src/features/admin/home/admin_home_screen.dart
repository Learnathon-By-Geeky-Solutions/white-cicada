import 'package:dine_hive/src/features/admin/home/widget/admin_home_header.dart';
import 'package:flutter/material.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.00),
          child: Column(
            children: [
              AdminHomeHeader(),

            ],
          ),
        ),
      ),
    );
  }
}
