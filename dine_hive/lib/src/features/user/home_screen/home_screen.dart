import 'package:dine_hive/core/theme/src/theme_extensions/color_palette.dart';
import 'package:dine_hive/src/features/user/home_screen/widgets/category_selection_menu.dart';
import 'package:dine_hive/src/features/user/home_screen/widgets/popular_hotel_part.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import '../../../../core/constant/key.dart';
import '../../../../core/constant/spacing.dart';
import '../../../../core/widgets/food_item_card.dart';
import '../../../../core/widgets/popular_hotel_card.dart';
import '../../../data/models/restaurent_model.dart';
import '../../../data/providers/home_screen_provider.dart';
import '../../../data/static_data.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/home_drawer.dart';
import 'widgets/show_food_item_part.dart';
import 'widgets/special_offer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const HomeDrawer(),
      body: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSpacing.pagePadding),
          child: Consumer<HomeScreenProvider>(
            builder: (BuildContext context, homeScreenProvider, Widget? child) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    /// app bar
                    const HomeAppBar(),
                    const Gap(10),
                
                    ///search filed for food item
                    TextField(
                      onChanged: (value) =>
                          homeScreenProvider.updateSearchQuery(value),
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.search), hintText: 'Search'),
                    ),
                
                    /// showing ad for hotel discount or offer
                    SpecialOfferWidget(
                      homeScreenProvider: homeScreenProvider,
                    ),
                    const Gap(10),

                    /// food Category selection
                    CategorySelectionMenu(
                      homeScreenProvider: homeScreenProvider,
                    ),
                
                    ///Showing & filtering food Item
                    const ShowFoodItemPart(),
                    const Gap(10),


                    ///Showing Popular Hotel
                    const PopularHotelPart()
                  ],
                ),
              );
            },
          )),
    );
  }
}



