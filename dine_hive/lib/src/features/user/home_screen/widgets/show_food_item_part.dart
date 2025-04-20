import 'package:dine_hive/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/widgets/food_item_card.dart';
import '../../../../data/providers/cart_screen_provider.dart';
import '../../../../data/providers/home_screen_provider.dart';
import '../../../../data/dummy_data/static_data.dart';
class ShowFoodItemPart extends StatelessWidget {
  const ShowFoodItemPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 275,
      child: Consumer<HomeScreenProvider>(
          builder: (context, homeScreenProvider,_) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: homeScreenProvider.filteredFoodList.length,
              itemBuilder: (context, index) {
                final food = homeScreenProvider.filteredFoodList[index];
                final restaurant = restaurantList.firstWhere(
                      (restaurant) => restaurant.restaurantId == food.restaurantId,
                );
                Provider.of<CartScreenProvider>(context).restaurantId = restaurant.restaurantId;
                Provider.of<CartScreenProvider>(context).restaurantName = restaurant.restaurantName;
                return FoodItemCard(
                  description: "100 gr chicken + tomato + cheese Lettuce",
                  restaurant: restaurant.restaurantName,
                  rating: Utils.calculateAverageRating(restaurant.ratings),
                  foodModel: food, showAddCart: false,
                );
              },
            );
          }
      ),
    );
  }
}