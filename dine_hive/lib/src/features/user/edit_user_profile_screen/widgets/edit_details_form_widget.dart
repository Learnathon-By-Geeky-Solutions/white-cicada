import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/core/constant/texts.dart';
import 'package:dine_hive/core/theme/src/theme_extensions/color_palette.dart';
import 'package:dine_hive/src/data/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EditDetailsFormWidget extends StatefulWidget {
  const EditDetailsFormWidget({super.key, this.userModel});

  final UserModel? userModel;

  @override
  State<EditDetailsFormWidget> createState() => _EditDetailsFormWidgetState();
}

class _EditDetailsFormWidgetState extends State<EditDetailsFormWidget> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    UserModel? userModel = widget.userModel;
    _nameController.text = userModel?.userName ?? '';
    _emailController.text = userModel?.userEmail ?? '';
    _bioController.text = userModel?.userBio ?? '';
    _phoneController.text = userModel?.userPhone ?? '';
  }

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _bioController.dispose();
    _phoneController.dispose();
  }

  void _onTapSaveButton() {}


  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          TextField(
            controller: _nameController,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person), hintText: AppText.name),
          ),
          Gap(AppSpacing.screenHeight(context) * 0.02),
          TextField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email), hintText: AppText.emailAddress),
          ),
          Gap(AppSpacing.screenHeight(context) * 0.02),
          TextField(
            controller: _bioController,
            maxLines: 3,
            decoration: const InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: Icon(Icons.description),
                ), hintText: AppText.bio),
          ),
          Gap(AppSpacing.screenHeight(context) * 0.02),
          TextField(
            controller: _phoneController,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.phone),
              hintText: AppText.phone,
            ),
          ),
          Gap(AppSpacing.screenHeight(context) * 0.03),
          SizedBox(
            width: double.infinity,
            height: 55,
            child: ElevatedButton(
                onPressed: _onTapSaveButton,
                child: Text(
                  AppText.save,
                  style: textTheme.titleLarge!.copyWith(color: whiteColor),
                )),
          ),
        ],
      ),
    );
  }
}
