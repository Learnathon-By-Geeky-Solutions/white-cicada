import 'package:dine_hive/src/data/providers/parent_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'widget/custom_bottom_nav_bar_widget.dart';

class ParentScreen extends StatelessWidget {
  const ParentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ParentScreenProvider>(
      builder: (context , parentScreenProvider, _) {
        return Scaffold(
          body: parentScreenProvider.allPages[parentScreenProvider.selectedIndex],
          bottomNavigationBar: CustomBottomNav(selectedIndex: parentScreenProvider.selectedIndex, parentScreenProvider: parentScreenProvider,)
        );
      }
    );
  }
}
