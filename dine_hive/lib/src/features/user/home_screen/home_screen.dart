import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/constant/key.dart';
import '../../../../core/constant/spacing.dart';
import '../../../../core/theme/src/theme_extensions/color_palette.dart';
import '../../../../core/widgets/offer_card.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/home_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const HomeDrawer(),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSpacing.pagePadding),
        child: Column(
          children: [
            HomeAppBar(),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search), hintText: 'Search'),
            ),
            OfferCard(),
          ],
        ),
      ),
    );
  }
}

