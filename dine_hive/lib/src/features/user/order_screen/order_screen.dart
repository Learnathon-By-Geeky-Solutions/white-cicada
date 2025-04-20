import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/core/widgets/custom_app_bar.dart';
import 'package:dine_hive/src/data/providers/order_provider.dart';
import 'package:dine_hive/src/features/user/order_screen/widgets/progress_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSpacing.pagePadding),
          child: Column(
            children: [
              CustomAppBarWidget(
                appBarTitle: Provider.of<OrderProvider>(context).appBarTitle[
                    Provider.of<OrderProvider>(context).currentIndex],
              ),
              const ProgressWidget(),
              Expanded(
                child: Consumer<OrderProvider>(
                  builder: (_, oderScreenProvider, __) {
                    return PageView.builder(
                      controller: oderScreenProvider.pageController,
                      itemCount: oderScreenProvider.carouselItems.length,
                      onPageChanged: oderScreenProvider.updateIndex,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (_, index) {
                        return oderScreenProvider.carouselItems[index];
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
