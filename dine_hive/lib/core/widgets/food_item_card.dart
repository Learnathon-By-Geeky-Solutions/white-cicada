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
    final textTheme = Theme.of(context).textTheme;
    final cartProvider = context.watch<CartScreenProvider>();
    final isInCart = cartProvider.isInCart(foodModel);

    return GestureDetector(
      onTap: () {
        if (!showAddCart) {
          context.push(AppRouteConstant.restaurantInfoScreen);
        }
      },
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
            /// Rating
            Row(
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 18),
                const SizedBox(width: 5),
                Text(
                  rating.toString(),
                  style: textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),

            const SizedBox(height: 5),

            /// Food Image
            Center(
              child: Image.network(
                foodModel.imageUrl,
                height: 80,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) =>
                    const Icon(Icons.fastfood, size: 60),
              ),
            ),

            const SizedBox(height: 8),

            /// Food Name
            Expanded(
              child: Text(
                foodModel.name,
                style: textTheme.titleSmall,
              ),
            ),

            const SizedBox(height: 5),

            /// Description
            Text(
              description,
              style: textTheme.bodySmall?.copyWith(
                color: AppColors.homeBodyTextColor,
                fontWeight: FontWeight.w500,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),

            const SizedBox(height: 5),

            /// Restaurant Name
            Text(
              "at $restaurant",
              style: textTheme.bodySmall?.copyWith(
                color: AppColors.homeBodyTextColor,
                fontWeight: FontWeight.w700,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

            const Spacer(),

            /// Price + Add/Remove Button
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
                  overflow: TextOverflow.ellipsis,
                ),

                /// if card in home screen skip the part but if it in choose food screen
                /// and show the add to cart option
                /// after selecting at least one you can move to cart screen
                /// the widget is in under this widget
                if (showAddCart)
                  CardAddRemoveButton(
                      isInCart: isInCart,
                      cartProvider: cartProvider,
                      foodModel: foodModel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



class CardAddRemoveButton extends StatelessWidget {
  const CardAddRemoveButton({
    super.key,
    required this.isInCart,
    required this.cartProvider,
    required this.foodModel,
  });

  final bool isInCart;
  final CartScreenProvider cartProvider;
  final FoodModel foodModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isInCart
            ? cartProvider.removeFromCart(foodModel)
            : cartProvider.addToCart(foodModel);
      },
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        ///showing animation
        transitionBuilder: (child, animation) => SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 0.3),
            end: Offset.zero,
          ).animate(animation),
          child: FadeTransition(opacity: animation, child: child),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: isInCart ? AppColors.redColor : Colors.orange,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              isInCart
                  ? const Icon(Icons.delete, color: Colors.white, size: 20)
                  : const Icon(Icons.add, color: Colors.white, size: 20),
              const SizedBox(width: 4),
              if (isInCart)
                ///show if the item is added
                const Text(
                  'Remove',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
