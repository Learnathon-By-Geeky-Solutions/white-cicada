import 'package:dine_hive/core/theme/src/theme_extensions/color_palette.dart';
import 'package:dine_hive/core/widgets/custom_bottom_buttons.dart';
import 'package:dine_hive/src/data/providers/order_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../core/utils/toast_messages.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/widgets/food_item_card.dart';
import '../../../../data/providers/cart_screen_provider.dart';
import '../../../../data/dummy_data/static_data.dart';

class ChooseFoodSection extends StatelessWidget {
  const ChooseFoodSection({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    final cartProvider = context.watch<CartScreenProvider>();
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 80),
          child: GridView.builder(
            padding: const EdgeInsets.only(top: 10),
            itemCount: foodList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              childAspectRatio: 0.64,
            ),
            itemBuilder: (context, index) {
              final restaurant = restaurantList.firstWhere(
                (restaurant) => restaurant.restaurantId == foodList[index].restaurantId,
              );
              return FoodItemCard(
                description: "100 gr chicken + tomato + cheese Lettuce",
                restaurant: restaurant.restaurantName,
                rating: Utils.calculateAverageRating(restaurant.ratings),
                foodModel: foodList[index],
                showAddCart: true,
              );
            },
          ),
        ),

        ///Bottom Button
        Positioned(
          bottom: 10,
          left: 10,
          right: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Provider.of<OrderScreenProvider>(context, listen: false)
                        .updatePage(1);
                    cartProvider.calculateTotalPrice();
                  },
                  child: Text(
                    "Skip for now",
                    style: textTheme.bodyMedium,
                  ),
                ),
              ),
              Expanded(
                child: CustomBottomButtons(
                    title: 'Order Now',
                    suffixIcon: Icons.keyboard_arrow_right_outlined,
                    buttonColor:
                        cartProvider.cartItem.isEmpty ? AppColors.whiteShadeColor : null,
                    onTappedAction: () {
                      cartProvider.cartItem.isEmpty
                          ? ToastService.showSnackbar(
                              context, "Select at least one")
                          : Provider.of<OrderScreenProvider>(context, listen: false)
                              .updatePage(1);
                      cartProvider.calculateTotalPrice();
                    }),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
