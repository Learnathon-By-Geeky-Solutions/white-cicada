import 'package:dine_hive/core/route/app_route_constant.dart';
import 'package:dine_hive/core/theme/src/theme_extensions/color_palette.dart';
import 'package:dine_hive/src/data/models/food_model.dart';
import 'package:dine_hive/src/data/providers/cart_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class FoodItemCard extends StatelessWidget {
  final FoodModel foodModel;
  final String restaurant;
  final String description;
  final double rating;
  final bool showAddCart;
  const FoodItemCard({
    super.key,
    required this.foodModel,
    required this.restaurant,
    required this.rating,
    required this.description,
    required this.showAddCart,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: () => !showAddCart
          ? context.push(AppRouteConstant.restaurantInfoScreen)
          : null,
      child: Container(
        width: 180,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 18),
                const SizedBox(width: 5),
                Text(
                  rating.toString(),
                  style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(height: 5),

            Center(
              child: Image.network(
                foodModel.imageUrl,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),

            // Food Name
            Expanded(
              child: Text(
                foodModel.name,
                style: textTheme.titleSmall
              ),
            ),
            const SizedBox(height: 5),

            // Description
            Text(
              description,
              style: textTheme.bodySmall!.copyWith(color: homeBodyTextColor,fontWeight: FontWeight.w500,),maxLines: 2,
            ),
            const SizedBox(height: 5),

            // Restaurant Name
            Text(
              "at $restaurant",
                style: textTheme.bodySmall!.copyWith(color: homeBodyTextColor,fontWeight: FontWeight.w700),maxLines: 1,
            ),
            const Spacer(),

            // Price and Add Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${foodModel.price.toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
                if (showAddCart)
                  GestureDetector(
                    onTap: () {
                      context.read<CartScreenProvider>().addToCart(foodModel);
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.add, color: Colors.white),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
