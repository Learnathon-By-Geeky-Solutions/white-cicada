import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/core/theme/src/theme_extensions/color_palette.dart';
import 'package:dine_hive/src/data/providers/order_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Consumer<OrderProvider>(
      builder: (context, orderProvider,_) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            orderProvider.carouselItems.length,
                (index) {
              return Flexible(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  height: 2,
                  decoration: BoxDecoration(
                    color:
                    orderProvider.currentIndex >= index
                        ? AppColors.redColor
                        : const Color(0xff1E1E1E).withOpacity(0.12),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              );
            },
          ),
        );
      }
    );
  }
}
