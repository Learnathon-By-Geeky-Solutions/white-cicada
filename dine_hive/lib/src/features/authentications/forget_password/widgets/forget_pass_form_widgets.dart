import 'package:dine_hive/core/route/app_route_constant.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/constant/spacing.dart';
import '../../../../../core/constant/texts.dart';
import '../../../../../core/theme/src/theme_extensions/color_palette.dart';

class ForgetPassFormWidgets extends StatelessWidget {
  const ForgetPassFormWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        const TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.email), hintText: AppText.emailAddress),
        ),
        Gap(AppSpacing.screenHeight(context) * 0.03),
        SizedBox(
          width: double.infinity,
          height: 55,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {context.go(AppRouteConstant.initialRoute);},
                  child: Text(
                    AppText.cancel,
                    style: textTheme.titleMedium!.copyWith(color: redColor),
                  )
              ),
              ElevatedButton(
                  onPressed: () {context.go(AppRouteConstant.initialRoute);},
                  child: Row(
                    children: [
                      Text(
                        AppText.sendEmail,
                        style: textTheme.titleMedium!.copyWith(color: whiteColor),
                      ),
                      Gap(AppSpacing.screenWidth(context) * 0.01),
                      const Icon(Icons.arrow_forward,
                        color: whiteColor,
                      )
                    ],
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
