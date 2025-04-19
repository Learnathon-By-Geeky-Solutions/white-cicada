import 'package:flutter/material.dart';
import '../../../../../core/theme/src/theme_extensions/color_palette.dart';
import '../../../../data/providers/home_screen_provider.dart';
import '../../../../data/static_data.dart';

class CategorySelectionMenu extends StatelessWidget {
  const CategorySelectionMenu({
    super.key,
    required this.homeScreenProvider,
  });
  final HomeScreenProvider homeScreenProvider;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60, // Adjust height as needed
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: popularCategories.map((category) {
            bool isSelected =
                homeScreenProvider.selectedCategory == category["name"];
            return GestureDetector(
              onTap: () =>
                  homeScreenProvider.selectCategory(category["name"]!),
              child: Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                margin: const EdgeInsets.symmetric(horizontal: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: redColor, width: 2),
                  color: isSelected ? textFiledFillColor : Colors.transparent,
                ),
                child: Row(
                  children: [
                    if(category["name"]!="All")
                    ...[Image.network(
                      category["image"]!,
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 8),],
                    const SizedBox(height: 30,),
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
    );
  }
}