import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/core/constant/texts.dart';
import 'package:dine_hive/core/route/app_route_constant.dart';
import 'package:dine_hive/core/widgets/custom_bottom_buttons.dart';
import 'package:dine_hive/src/data/providers/cart_screen_provider.dart';
import 'package:dine_hive/src/features/user/choose_table/choose_table_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class CustomBottomBarWidget extends StatelessWidget {
  const CustomBottomBarWidget({
    super.key,
    required this.textTheme,
    required this.title1,
    required this.title2,
    this.pIcon,
    this.sIcon,
  });

  final TextTheme textTheme;
  final String title1;
  final String title2;
  final IconData? sIcon;
  final IconData? pIcon;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
          width: AppSpacing.screenWidth(context) * 0.9,
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(20), bottom: Radius.circular(20)),
            boxShadow: [BoxShadow(blurRadius: 5, color: Colors.black26)],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBottomButtons(
                    title: AppText.favourite,
                    prefixIcon: pIcon,
                    onTappedAction: () {},
                  ),
                  GestureDetector(
                    onTap: () =>
                        context.push(AppRouteConstant.chooseTableScreen),
                    child: CustomBottomButtons(
                      title: AppText.bookNow,
                      suffixIcon: sIcon,
                      onTappedAction: () {
                        context.push(AppRouteConstant.chooseTableScreen);
                      },
                    ),
                  ),
                ]),
          )),
    );
  }
}
