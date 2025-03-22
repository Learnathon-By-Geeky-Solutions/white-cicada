import 'package:dine_hive/core/theme/src/theme_extensions/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import '../../../../core/constant/key.dart';
import '../../../../core/constant/spacing.dart';
import '../../../../core/widgets/food_item_card.dart';
import '../../../data/providers/home_screen_provider.dart';
import '../../../data/static_data.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/home_drawer.dart';
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
              return Column(
                children: [
                  const HomeAppBar(),
                  const Gap(10),
                  const TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search), hintText: 'Search'),
                  ),
                  SpecialOfferWidget(
                    homeScreenProvider: homeScreenProvider,
                  ),
                  SizedBox(
                    height: 60, // Adjust height as needed
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: popularCategories.map((category) {
                          bool isSelected =
                              homeScreenProvider.selectedCategory ==
                                  category["name"];
                          return GestureDetector(
                            onTap: () => homeScreenProvider.selectCategory(
                                context, category["name"]!),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 10),
                              margin: const EdgeInsets.symmetric(horizontal: 6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: redColor, width: 2),
                                color: isSelected
                                    ? textFiledFillColor
                                    : Colors.transparent,
                              ),
                              child: Row(
                                children: [
                                  Image.network(
                                    category["image"]!,
                                    width: 30, // Adjust image size
                                    height: 30,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                      width: 8), // Space between image and text
                                  Text(
                                    category["name"]!,
                                    style: const TextStyle(
                                      color: blackColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(
                      height: 275, // Adjust height as needed
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: foodList.length,
                        itemBuilder: (context, index) {
                          final food = foodList[index];
                          return FoodItemCard(
                            imageUrl: food.imageUrl,
                            name: food.name,
                            description:
                                "100 gr chicken + tomato + cheese Lettuce",
                            restaurant: "SpiceHotel",
                            rating: 3.8, // You can update with real data
                            price: food.price,
                          );
                        },
                      )),
                ],
              );
            },
          )),
    );
  }
}
