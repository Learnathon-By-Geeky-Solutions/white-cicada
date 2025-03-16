
import 'package:dine_hive/src/features/user/restaurant_info_screen/widgets/restaurant_info_footer_widget.dart';
import 'package:dine_hive/src/features/user/restaurant_info_screen/widgets/restaurant_info_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../core/constant/spacing.dart';
import 'widgets/restaurant_info_body_widget.dart';


class RestaurantInfoScreen extends StatefulWidget {
  const RestaurantInfoScreen({super.key});

  @override
  State<RestaurantInfoScreen> createState() => _RestaurantInfoScreenState();
}

class _RestaurantInfoScreenState extends State<RestaurantInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RestaurantInfoHeaderWidget(),
            Gap(AppSpacing.screenHeight(context) * 0.02),
            const RestaurantInfoBodyWidget(),
            Gap(AppSpacing.screenHeight(context) * 0.02),
            const RestaurantInfoFooterWidget(),
          ],
        ),
      ),
    );
  }
}


