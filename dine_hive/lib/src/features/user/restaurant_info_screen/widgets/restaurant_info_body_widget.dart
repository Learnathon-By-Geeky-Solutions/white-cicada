import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/core/constant/texts.dart';
import 'package:dine_hive/src/data/models/restaurant_model.dart';
import 'package:dine_hive/src/features/user/restaurant_info_screen/widgets/custom_rating_star.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../../core/theme/src/theme_extensions/color_palette.dart'
    as AppColors;

class RestaurantInfoBodyWidget extends StatefulWidget {
  const RestaurantInfoBodyWidget(
      {super.key, required this.restaurant,
      });

  final RestaurantModel? restaurant;

  @override
  State<RestaurantInfoBodyWidget> createState() =>
      _RestaurantInfoBodyWidgetState();
}

class _RestaurantInfoBodyWidgetState extends State<RestaurantInfoBodyWidget> {
  get averageRating =>
      widget.restaurant!.ratings.reduce((value, element) => value + element) /
      widget.restaurant!.ratings.length;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 32, right: 32, bottom: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppSpacing.screenHeight(context) * 0.04,
            width: AppSpacing.screenWidth(context) * 0.22,
            decoration: const BoxDecoration(
              color: AppColors.textFiledFillColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Center(
              child: Text(
                widget.restaurant!.isPopular ? AppText.popular : AppText.notPopular,
                style: const TextStyle(
                    color: AppColors.buttonFrontColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Gap(AppSpacing.screenHeight(context) * 0.03),
          Text(
            widget.restaurant!.restaurantName,
            style:
                textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.w400),
          ),
          Gap(AppSpacing.screenHeight(context) * 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              RatingStar(rating: averageRating),
              const Gap(8),
              Text('${averageRating.toString()} Ratings',
                  style: const TextStyle(
                      color: AppColors.whiteShadeColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600)),
              Gap(AppSpacing.screenWidth(context) * 0.10),
              const Icon(
                Icons.shopping_bag_outlined,
                color: AppColors.orangeColor,
                size: 30,
              ),
              const Gap(8),
              Text(
                '${widget.restaurant!.orderQty.toString()}+ Orders',
                style: const TextStyle(
                    color: AppColors.whiteShadeColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
