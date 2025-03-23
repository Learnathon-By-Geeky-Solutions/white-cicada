import 'dart:math';
import 'package:dine_hive/core/constant/images.dart';
import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/core/constant/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../../core/theme/src/theme_extensions/color_palette.dart';
import '../../../../data/static_restaurent_data.dart';
import '../../../../data/models/restaurent_model.dart';

class ChooseTableScreenHeader extends StatefulWidget {
  const ChooseTableScreenHeader({super.key});

  @override
  State<ChooseTableScreenHeader> createState() => _ChooseTableScreenHeaderState();
}

class _ChooseTableScreenHeaderState extends State<ChooseTableScreenHeader> {
  RestaurantModel? getRestaurantById(String id, List<RestaurantModel> restaurants) {
    try {
      return restaurants.firstWhere((restaurant) => restaurant.sId == id);
    } catch (e) {
      return null;
    }
  }
  @override
  Widget build(BuildContext context) {
    RestaurantModel? restaurants = getRestaurantById('1', restaurantList);
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
                decoration: BoxDecoration(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Available
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: availableColor, // Light yellow
                      ),
                      const SizedBox(width: 5),
                      const Text(AppText.avail),
                    ],
                  ),
                  const SizedBox(width: 15), // Space between statuses
                  // Booked
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: bookedColor, // Red
                      ),
                      const SizedBox(width: 5),
                      const Text(AppText.book),
                    ],
                  ),
                  const SizedBox(width: 15), // Space between statuses
                  // Reserved
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: reservedColor, // Light green
                      ),
                      const SizedBox(width: 5),
                      const Text(AppText.reserve),
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
