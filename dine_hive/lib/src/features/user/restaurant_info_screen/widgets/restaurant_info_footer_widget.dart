import 'package:dine_hive/core/constant/texts.dart';
import 'package:dine_hive/core/widgets/custom_bottom_bar.dart';
import 'package:dine_hive/src/data/models/restaurent_model.dart';
import 'package:dine_hive/src/data/providers/bottom_sheet_visibility_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RestaurantInfoFooterWidget extends StatefulWidget {
  const RestaurantInfoFooterWidget({super.key, this.restaurant});
  final RestaurantModel? restaurant;

  @override
  State<RestaurantInfoFooterWidget> createState() =>
      _RestaurantInfoFooterWidgetState();
}

class _RestaurantInfoFooterWidgetState
    extends State<RestaurantInfoFooterWidget> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        context
            .read<BottomSheetVisibilityProvider>()
            .updateVisibility(_scrollController.offset);
      });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final showBar =
        context.watch<BottomSheetVisibilityProvider>().showBottomSheet;

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: SingleChildScrollView(
            controller: _scrollController,
            padding: const EdgeInsets.only(bottom: 80),
            child: Text(
              widget.restaurant?.restaurantDescription ??
                  'No description available.',
              textAlign: TextAlign.justify,
              style: textTheme.bodyMedium?.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),

        // — the fading bottom bar:
        Positioned(
          child: AnimatedOpacity(
            opacity: showBar ? 1 : 0,
            duration: const Duration(milliseconds: 300),
            child: const CustomBottomBarWidget(
              title1: AppText.backToHome,
              title2: AppText.trackOrder,
              pIcon: Icons.home,
            ),
          ),
        ),
      ],
    );
  }
}
