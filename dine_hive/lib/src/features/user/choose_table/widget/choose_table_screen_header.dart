import 'dart:math';
import 'package:dine_hive/core/constant/images.dart';
import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/core/constant/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

import '../../../../../core/theme/src/theme_extensions/color_palette.dart';
import '../../../../data/providers/choose_table_provider.dart';
import '../../../../data/static_restaurant_data.dart';

class ChooseTableScreenHeader extends StatefulWidget {
  const ChooseTableScreenHeader({super.key});

  @override
  State<ChooseTableScreenHeader> createState() => _ChooseTableScreenHeaderState();
}

class _ChooseTableScreenHeaderState extends State<ChooseTableScreenHeader> {
  @override
  Widget build(BuildContext context) {
    final chooseTableProvider = Provider.of<ChooseTableProvider>(context, listen: false);
    final restaurants = chooseTableProvider.getRestaurantById("1", dummyRestaurants);
    double height = AppSpacing.screenHeight(context);
    double width = AppSpacing.screenWidth(context);
    TextTheme textTheme = Theme.of(context).textTheme;
    return Stack(
      children: [
        Positioned.fill(
          right: width*0.2,
            top: height*-0.2,
            child: Transform.rotate(
                angle: -70.9*(pi/180),
                child: Image.asset(AppImages.pattern, fit: BoxFit.cover,)
            )
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16, left: 32, right: 32, bottom: 16),
          child: Column(
            children: [
              Gap(height*0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(restaurants!.restaurantName,
                    style: textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold)
                  ),
                  Image.asset(AppImages.userImage)
                ],
              ),
              Gap(width*0.04),
              Container(
                height: height*0.15,
                width: width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.network(restaurants.img, fit: BoxFit.cover,),
              ),
              Gap(width*0.03),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(AppText.chooseTable, style: textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold)),),
              Gap(width*0.03),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Available
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: AppColors.availableColor, // Light yellow
                      ),
                      SizedBox(width: 5),
                      Text(AppText.avail),
                    ],
                  ),
                  SizedBox(width: 15), // Space between statuses
                  // Booked
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: AppColors.bookedColor, // Red
                      ),
                      SizedBox(width: 5),
                      Text(AppText.book),
                    ],
                  ),
                  SizedBox(width: 15), // Space between statuses
                  // Reserved
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: AppColors.reservedColor, // Light green
                      ),
                      SizedBox(width: 5),
                      Text(AppText.reserve),
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
