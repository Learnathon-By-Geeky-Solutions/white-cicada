import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/constant/icons.dart';
import '../../../../../core/constant/images.dart';
import '../../../../../core/constant/spacing.dart';
import '../../../../../core/constant/texts.dart';
import '../../../../../core/route/app_route_constant.dart';
import '../../../../../core/services/firebase_service/auth_services.dart';

class AdminHomeHeader extends StatefulWidget {
  const AdminHomeHeader({super.key});

  @override
  State<AdminHomeHeader> createState() => _AdminHomeHeaderState();
}

class _AdminHomeHeaderState extends State<AdminHomeHeader> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double height = AppSpacing.screenHeight(context);
    double width = AppSpacing.screenWidth(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(AppText.helloAdmin, style: textTheme.headlineSmall,),
        Image.asset(AppImages.appLogo, width: width*0.15,),
        Gap(width*0.10),
        TextButton(onPressed: (){
          AuthService authService = AuthService();
          authService.signOut();
          context.go(AppRouteConstant.signInScreen);
        }, child: SvgPicture.asset(AppIcons.logOut)),
      ],
    );
  }
}
