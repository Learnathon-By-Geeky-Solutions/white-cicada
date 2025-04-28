import 'package:dine_hive/core/constant/texts.dart';
import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_bottom_bar.dart';
import '../../../../data/models/restaurant_model.dart';

class RestaurantInfoFooterWidget extends StatefulWidget {
  const RestaurantInfoFooterWidget({super.key, this.restaurant});

  final RestaurantModel? restaurant;

  @override
  State<RestaurantInfoFooterWidget> createState() =>
      _RestaurantInfoFooterWidgetState();
}

class _RestaurantInfoFooterWidgetState extends State<RestaurantInfoFooterWidget> {
  final ScrollController _scrollController = ScrollController();
  bool _showBottomSheet = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset > 10 && _showBottomSheet) {
        setState(() {
          _showBottomSheet = false;
        });
      } else if (_scrollController.offset <= 0 && !_showBottomSheet) {
        setState(() {
          _showBottomSheet = true;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Expanded(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Text(
                textAlign: TextAlign.justify,
                widget.restaurant?.restaurantDescription ?? "No description available for this restaurant.",
                style: textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    ) ?? const TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
            ),
          ),
      
          AnimatedOpacity(
            opacity: _showBottomSheet ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 300),
            child: CustomBottomBarWidget(textTheme: textTheme, title1: AppText.favourite, title2: AppText.bookNow, pIcon: Icons.favorite, sIcon: Icons.arrow_forward_ios_outlined),
          ),
        ],
      ),
    );
  }
}

