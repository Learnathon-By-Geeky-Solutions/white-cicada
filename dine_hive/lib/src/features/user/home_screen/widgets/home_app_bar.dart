import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import '../../../../../core/constant/icons.dart';
import '../../../../../core/constant/images.dart';
import '../../../../../core/constant/key.dart';
import '../../../../../core/constant/spacing.dart';
import '../../../../../core/constant/texts.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSpacing.screenWidth(context),
      height: 80,
      child: Stack(
        children: [
          Positioned(
              top: 0, right: 0, child: Image.asset(AppImages.appBarBgPattern)),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.pagePadding),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: SvgPicture.asset(
                      AppIcons.appDrawer,
                    ),
                    onPressed: () {
                      scaffoldKey.currentState?.openDrawer(); // Open drawer
                    },
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(AppIcons.locationIcon),
                      const Gap(5),
                      const Text(AppText.findAndBookRestaurant),
                    ],
                  ),
                  const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg')),
                  const Gap(1),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}