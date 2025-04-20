import 'package:flutter/material.dart';

import '../constant/spacing.dart';
import '../theme/src/theme_extensions/color_palette.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: AppSpacing.screenHeight(context) * 0.2,
      width: AppSpacing.screenWidth(context),
      padding: const EdgeInsets.all(AppSpacing.pagePadding),
      decoration: BoxDecoration(
        gradient: const LinearGradient(stops: [
          0.0,
          0.99
        ], colors: [
          Color(0xffED9A47),
          Color(0xffFFB4B4),
        ]),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Special Offer\non SpiceHotel',
                style: textTheme.titleLarge!.copyWith(
                    color: AppColors.whiteColor, fontWeight: FontWeight.bold),
              ),
              Text(
                'We are here with the best\ndeserts intown.',
                style: textTheme.bodySmall!.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(AppColors.whiteColor),
                  side: WidgetStateProperty.all(BorderSide.none),
                ),
                onPressed: () {},
                child:  Text('Book Now',style: textTheme.bodySmall!.copyWith(
                  color: AppColors.redColor,
                ),),
              )
            ],
          ),
          Image.network(
              'https://static.vecteezy.com/system/resources/previews/050/594/449/non_2x/3d-restaurant-front-view-isolate-on-transparency-background-png.png')
        ],
      ),
    );
  }
}