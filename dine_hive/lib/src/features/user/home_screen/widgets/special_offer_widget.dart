import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../../core/constant/spacing.dart';
import '../../../../../core/theme/src/theme_extensions/color_palette.dart';
import '../../../../data/providers/home_screen_provider.dart';

class SpecialOfferWidget extends StatelessWidget {
  const SpecialOfferWidget({
    super.key,
    required this.homeScreenProvider,
  });
  final HomeScreenProvider homeScreenProvider;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(20),
        SizedBox(
          height: AppSpacing.screenHeight(context) * 0.2,
          child: PageView.builder(
            controller: homeScreenProvider.pageController,
            itemCount: homeScreenProvider.carouselItems.length,
            onPageChanged: (index) {
              homeScreenProvider.updateIndex(index);
            },
            itemBuilder: (BuildContext context, int index) {
              return homeScreenProvider.carouselItems[index];
            },
          ),
        ),
        const Gap(12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            homeScreenProvider.carouselItems.length,
                (index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 2),
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: homeScreenProvider.currentIndex == index
                      ? AppColors.primaryColor
                      : const Color(0xff1E1E1E).withOpacity(0.12),
                  borderRadius: BorderRadius.circular(8),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}