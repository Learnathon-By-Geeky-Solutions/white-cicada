import 'package:dine_hive/core/constant/images.dart';
import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/src/data/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class UserProfilePhotoWidget extends StatefulWidget {
  const UserProfilePhotoWidget({super.key, this.userModel});

  final UserModel? userModel;

  @override
  State<UserProfilePhotoWidget> createState() => _UserProfilePhotoWidgetState();
}

class _UserProfilePhotoWidgetState extends State<UserProfilePhotoWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const CircleAvatar(
        radius: 80,
        backgroundImage: AssetImage(AppImages.userImage),
      ),
      Gap(AppSpacing.screenHeight(context) * 0.02),
      Text(
        widget.userModel!.userName,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
      ),
      Gap(AppSpacing.screenHeight(context) * 0.01),
      Text(
        widget.userModel != null && widget.userModel!.userBio != null
            ? widget.userModel!.userBio!
            : '',
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      ),
    ]);
  }
}
