import 'package:dine_hive/src/data/models/user_model.dart';
import 'package:flutter/material.dart';

class MenuCardWidget extends StatelessWidget {
  const MenuCardWidget(
      {super.key,
      required this.title,
      required this.suffixIcon,
      required this.onTap,
      this.userModel});

  final UserModel? userModel;
  final String title;
  final IconData suffixIcon;
  final VoidCallback onTap;

  void _onTapMenuCard() {
    onTap();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: _onTapMenuCard,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600),
          ),
          Icon(suffixIcon, color: Colors.black),
        ],
      ),
    );
  }
}
