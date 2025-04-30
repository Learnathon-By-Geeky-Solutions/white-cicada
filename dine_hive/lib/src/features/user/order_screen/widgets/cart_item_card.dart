import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../../core/constant/spacing.dart';
import '../../../../../core/theme/src/theme_extensions/color_palette.dart';
import '../../../../../core/widgets/cart_icon_button.dart';
import '../../../../data/providers/cart_screen_provider.dart';
class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key,
    required this.textTheme,
    required this.cartProvider,
    required this.index,
  });

  final TextTheme textTheme;
  final CartScreenProvider cartProvider;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.whiteColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 50,
              color: const Color(0xff151515).withOpacity(0.1),
            )
          ]),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                SizedBox(
                  height: AppSpacing.screenWidth(context) * 0.12,
                  width: AppSpacing.screenWidth(context) * 0.12,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10), // Circular 10
                    child: Image.network(
                      cartProvider.cartItem[index].imageUrl,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Gap(10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 3,
                  children: [
                    Text(
                      cartProvider.cartItem[index].name,
                      style: textTheme.titleSmall,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      cartProvider.cartItem[index].category,
                      style: textTheme.labelLarge,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      '\$ ${cartProvider.cartItem[index].price}',
                      style: textTheme.titleSmall,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ],
            ),
            Row(
              spacing: 5,
              children: [
                CartIconButton(
                  icon: Icon(
                    cartProvider.cartItem[index].quantity == 1
                        ? Icons.delete
                        : Icons.remove,
                    color: AppColors.redColor,
                    size: 15,
                  ),
                  onTap: () {
                    cartProvider.decreaseQuantity(cartProvider.cartItem[index]);
                    cartProvider.calculateTotalPrice();
                  },
                  color: AppColors.redColor.withOpacity(0.1),
                  child: cartProvider.cartItem[index].quantity == 1
                      ? const Text(' Remove ')
                      : null,
                ),
                Text(
                  cartProvider.cartItem[index].quantity.toString(),
                  style: textTheme.labelLarge,
                ),
                CartIconButton(
                    icon: const Icon(
                      Icons.add,
                      color: AppColors.whiteColor,
                      size: 15,
                    ),
                    onTap: () {
                      cartProvider
                          .increaseQuantity(cartProvider.cartItem[index]);
                      cartProvider.calculateTotalPrice();
                    },
                    color: AppColors.buttonBGColor),
              ],
            )
          ]),
    );
  }
}