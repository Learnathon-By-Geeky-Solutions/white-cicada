import 'package:flutter/material.dart';

import '../../../../../core/constant/spacing.dart';
import '../../../../../core/widgets/popular_hotel_card.dart';
class PopularHotelPart extends StatelessWidget {
  const PopularHotelPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Popular Restaurants ",
                style: Theme.of(context).textTheme.bodyLarge),
            Row(
              children: [
                Text("See all",
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium),
                const Icon(Icons.keyboard_arrow_right_outlined)
              ],
            )
          ],
        ),
        SizedBox(height: AppSpacing.screenHeight(context)*0.01,),
        const PopularHotelCard(),
      ],
    );
  }
}