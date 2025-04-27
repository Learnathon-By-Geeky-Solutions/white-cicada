import 'package:dine_hive/src/features/user/restaurant_info_screen/widgets/restaurant_info_footer_widget.dart';
import 'package:dine_hive/src/features/user/restaurant_info_screen/widgets/restaurant_info_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import '../../../../core/constant/spacing.dart';
import '../../../data/dummy_data/static_data.dart';
import '../../../data/models/restaurant_model.dart';
import '../../../data/providers/cart_screen_provider.dart';
import 'widgets/restaurant_info_body_widget.dart';

class RestaurantInfoScreen extends StatefulWidget {
  const RestaurantInfoScreen({super.key, this.restaurantId = "1"});

  final String restaurantId;

  @override
  State<RestaurantInfoScreen> createState() => _RestaurantInfoScreenState();
}

class _RestaurantInfoScreenState extends State<RestaurantInfoScreen> {
  RestaurantModel? getRestaurantById(
      String id, List<RestaurantModel> restaurants) {
    try {
      return restaurants
          .firstWhere((restaurant) => restaurant.restaurantId == id);
    } catch (e) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    RestaurantModel? restaurants = getRestaurantById(
        Provider.of<CartScreenProvider>(context).restaurantId, restaurantList);

    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RestaurantInfoHeaderWidget(),
            Gap(AppSpacing.screenHeight(context) * 0.02),
            RestaurantInfoBodyWidget(
              restaurant: restaurants,
            ),
            Gap(AppSpacing.screenHeight(context) * 0.02),
            RestaurantInfoFooterWidget(
              restaurant: restaurants,
            ),
          ],
        ),
      ),
    );
  }
}
