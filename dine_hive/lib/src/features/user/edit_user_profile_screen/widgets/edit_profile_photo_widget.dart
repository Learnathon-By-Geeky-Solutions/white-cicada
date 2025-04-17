import 'package:dine_hive/core/constant/images.dart';
import 'package:dine_hive/core/theme/src/theme_extensions/color_palette.dart';
import 'package:dine_hive/src/data/models/user_model.dart';
import 'package:flutter/material.dart';


class EditProfilePhotoWidget extends StatefulWidget {
  const EditProfilePhotoWidget({super.key, this.userModel});

  final UserModel? userModel;

  @override
  State<EditProfilePhotoWidget> createState() => _EditProfilePhotoWidgetState();
}

class _EditProfilePhotoWidgetState extends State<EditProfilePhotoWidget> {

  void _onTapProfilePhotoEditButton() {}

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        const CircleAvatar(
          radius: 80,
          backgroundImage: AssetImage(AppImages.userImage),
        ),

        GestureDetector(
          onTap: _onTapProfilePhotoEditButton,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: buttonFrontColor,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: const Icon(
              Icons.edit,
              size: 24,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
