import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/src/data/models/user_model.dart';
import 'package:dine_hive/src/data/dummy_data/static_user_data.dart';
import 'package:dine_hive/src/features/user/edit_user_profile_screen/widgets/edit_details_form_widget.dart';
import 'package:dine_hive/src/features/user/edit_user_profile_screen/widgets/edit_profile_photo_widget.dart';
import 'package:dine_hive/src/features/user/edit_user_profile_screen/widgets/edit_user_profile_screen_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EditUserProfileScreen extends StatefulWidget {
  const EditUserProfileScreen({super.key, this.userId = 'user123'});

  final String userId;

  @override
  State<EditUserProfileScreen> createState() => _EditUserProfileScreenState();
}

class _EditUserProfileScreenState extends State<EditUserProfileScreen> {

  UserModel? getUserById(String id) {
    return staticUser.userId == id ? staticUser : null;
  }

  @override
  Widget build(BuildContext context) {
    UserModel? userModel = getUserById('user123');
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.pagePadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const EditUserProfileScreenAppBarWidget(),
                Gap(AppSpacing.screenHeight(context) * 0.02),
                EditProfilePhotoWidget(userModel: userModel,),
                Gap(AppSpacing.screenHeight(context) * 0.02),
                EditDetailsFormWidget(userModel: userModel,),
              ]
            ),
          ),
        ),
      ),
    );
  }
}
