import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/core/constant/texts.dart';
import 'package:flutter/material.dart';
import 'custom_bottom_buttons.dart';

class RestaurantInfoFooterWidget extends StatefulWidget {
  const RestaurantInfoFooterWidget({super.key});

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

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 32, right: 32, bottom: 16),
          child: SizedBox(
            height: AppSpacing.screenHeight(context) * 0.35,
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Text(
                textAlign: TextAlign.justify,
                AppText.description,
                style: textTheme.bodyMedium!
                    .copyWith(fontWeight: FontWeight.w400, fontSize: 16),
              ),
            ),
          ),
        ),

        AnimatedOpacity(
          opacity: _showBottomSheet ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 300),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: AppSpacing.screenWidth(context) * 0.9,
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20), bottom: Radius.circular(20)),
                boxShadow: [BoxShadow(blurRadius: 5, color: Colors.black26)],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomBottomButtons(textTheme: textTheme,title: AppText.favourite, pIcon: Icons.favorite,),
                    CustomBottomButtons(textTheme: textTheme,title: AppText.bookNow, sIcon: Icons.arrow_forward_ios_outlined,),
                  ]
                ),
              )
            ),
          ),
        ),
      ],
    );
  }
}
