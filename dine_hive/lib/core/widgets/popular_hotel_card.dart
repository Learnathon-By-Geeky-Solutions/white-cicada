import 'package:flutter/material.dart';

import '../constant/spacing.dart';
import '../theme/src/theme_extensions/color_palette.dart';
import '../../src/data/static_data.dart';

class PopularHotelCard extends StatelessWidget {
  const PopularHotelCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(7),
          boxShadow: [
            BoxShadow(
                offset:const Offset(1, 1),
                color: AppColors.blackColor.withOpacity(0.12)
            )
          ]
      ),
      child: ListTile(
        leading: Image.network(
            'https://static.vecteezy.com/system/resources/previews/050/594/449/non_2x/3d-restaurant-front-view-isolate-on-transparency-background-png.png'),
        title: Text(restaurantList.first.restaurantName),
        subtitle: Text(restaurantList.first.restaurantDescription,maxLines: 2,),
        trailing: SizedBox(
          width: AppSpacing.screenWidth(context)*0.2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.star, color: Colors.amber, size: 18),
              const SizedBox(width: 5),
              Text(
                "3.8",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}