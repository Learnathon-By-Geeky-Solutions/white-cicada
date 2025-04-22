import 'package:dine_hive/core/constant/images.dart';
import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/src/data/dummy_data/static_user_data.dart';
import 'package:dine_hive/src/data/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class UserProfilePhotoWidget extends StatelessWidget {
  const UserProfilePhotoWidget({super.key, this.userId = 'user123'});

  final String userId;

  UserModel? get _user => staticUser.userId == userId ? staticUser : null;

  @override
  Widget build(BuildContext context) {
    final user = _user;
    return Column(children: [
      const CircleAvatar(
        radius: 80,
        backgroundImage: AssetImage(AppImages.userImage),
      ),
      Gap(AppSpacing.screenHeight(context) * 0.02),
      Text(
        user!.userName,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      Gap(AppSpacing.screenHeight(context) * 0.01),
      Text(
        user.userBio != null
            ? user.userBio!
            : '',
        style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w100),
      ),
    ]);
  }
}
