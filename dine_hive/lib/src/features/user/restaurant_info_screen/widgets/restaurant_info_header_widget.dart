import 'package:dine_hive/core/constant/images.dart';
import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/src/features/user/restaurant_info_screen/widgets/custom_back_button.dart';
import 'package:flutter/material.dart';


class RestaurantInfoHeaderWidget extends StatelessWidget {
  const RestaurantInfoHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            AppImages.restaurantImage,
            fit: BoxFit.contain,
            semanticLabel: 'Dine Hive Logo',
          ),
        ),
        Positioned(
          top: AppSpacing.screenHeight(context) * 0.03,
          left: AppSpacing.screenHeight(context) * 0.03,
          child: InkWell(
            onTap: () {},
            child: const CustomBackButton(),
          ),
        )
      ],
    );
  }
}