import 'package:dine_hive/core/constant/images.dart';
import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/core/theme/src/theme_extensions/color_palette.dart';
import 'package:dine_hive/src/data/providers/cart_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import '../widgets/cart_item_card.dart';

class CartSection extends StatelessWidget {
  const CartSection({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Consumer<CartScreenProvider>(
      builder: (_, cartProvider, __) {
        return Column(
          children: [
            const Gap(10),
            Expanded(
              child: ListView.builder(
                  itemCount: cartProvider.cartItem.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CartItemCard(
                      textTheme: textTheme,
                      cartProvider: cartProvider,
                      index: index,
                    );
                  }),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.pagePadding),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [AppColors.buttonBGColor, Color(0XffFFB4B4)]),
                  image: DecorationImage(
                      image: AssetImage(AppImages.orderPattern))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 5),
                        buildCartPriceRow('Sub-Total', cartProvider.subTotalPrice.toStringAsFixed(2)),
                        const SizedBox(height: 5),
                        buildCartPriceRow('Table', cartProvider.tablePrice.toStringAsFixed(2)),
                        const SizedBox(height: 5),
                        buildCartPriceRow('Total Price', cartProvider.totalPrice.toStringAsFixed(2)),
                      ],
                    ),
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(AppColors.whiteColor)
                          ),
                          child: const Text('Place My Order',style: TextStyle(color: AppColors.redColor),)))
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget buildCartPriceRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Text(value),
      ],
    );
  }

}
