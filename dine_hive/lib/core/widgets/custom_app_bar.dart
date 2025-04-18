import 'package:dine_hive/core/constant/images.dart';
import 'package:dine_hive/core/constant/spacing.dart';
import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key, this.appBarTitle});

  final String? appBarTitle;

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
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(appBarTitle ?? '', style: const TextStyle(fontSize: 20),),
                  const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg')),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
