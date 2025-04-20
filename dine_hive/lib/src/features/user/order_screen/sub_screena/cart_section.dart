import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/core/theme/src/theme_extensions/color_palette.dart';
import 'package:flutter/material.dart';

class CartSection extends StatelessWidget {
  const CartSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)
          ,color: AppColors.whiteShadeColor),
          child: Row(children: [
            SizedBox(
                height: AppSpacing.screenWidth(context) * 0.12,
                width: AppSpacing.screenWidth(context) * 0.12,
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2018/08/04/11/30/draw-3583548_1280.png',
                  fit: BoxFit.fill,
                )),
          ]),
        )
      ],
    );
  }
}
