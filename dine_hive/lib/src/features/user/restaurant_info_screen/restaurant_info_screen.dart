
import 'package:dine_hive/src/features/user/restaurant_info_screen/widgets/restaurant_info_footer_widget.dart';
import 'package:dine_hive/src/features/user/restaurant_info_screen/widgets/restaurant_info_header_widget.dart';
import 'package:dine_hive/src/models/restaurant_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../core/constant/spacing.dart';
import '../../../data/static_data.dart';
import 'widgets/restaurant_info_body_widget.dart';


class RestaurantInfoScreen extends StatefulWidget {
  RestaurantInfoScreen({super.key,this.restaurantId = "1"});

  String restaurantId;

  @override
  State<RestaurantInfoScreen> createState() => _RestaurantInfoScreenState();
}

class _RestaurantInfoScreenState extends State<RestaurantInfoScreen> {

  RestaurantModel? getRestaurantById(String id, List<RestaurantModel> restaurants) {
    try {
      return restaurants.firstWhere((restaurant) => restaurant.sId == id);
    } catch (e) {
      return null; // Return null if the restaurant is not found
    }
  }

  @override
  Widget build(BuildContext context) {

    RestaurantModel? restaurants = getRestaurantById('1', restaurantList);

    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RestaurantInfoHeaderWidget(),
            Gap(AppSpacing.screenHeight(context) * 0.02),
            RestaurantInfoBodyWidget(restaurant: restaurants,),
            Gap(AppSpacing.screenHeight(context) * 0.02),
            RestaurantInfoFooterWidget(restaurant: restaurants,),
          ],
        ),
      ),
    );
  }
}


