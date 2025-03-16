import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/core/constant/texts.dart';
import 'package:flutter/material.dart';

class RestaurantInfoFooterWidget extends StatefulWidget {
  const RestaurantInfoFooterWidget({super.key});

  @override
  State<RestaurantInfoFooterWidget> createState() =>
      _RestaurantInfoFooterWidgetState();
}

class _RestaurantInfoFooterWidgetState
    extends State<RestaurantInfoFooterWidget> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 32, right: 32, bottom: 16),
        child: SizedBox(
          height: AppSpacing.screenHeight(context) * 0.35,
          child: SingleChildScrollView(
            child: Text(
              textAlign: TextAlign.justify,
              AppText.description,
              style: textTheme.bodyMedium!
                  .copyWith(fontWeight: FontWeight.w400, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
