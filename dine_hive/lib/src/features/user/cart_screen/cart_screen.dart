import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.pagePadding),
      child: Column(
        children: [
          CustomAppBarWidget(appBarTitle: 'Track Your Order'),
          Expanded(child: Column())
        ],
      ),
    )));
  }
}
