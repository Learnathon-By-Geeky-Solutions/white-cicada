import 'package:dine_hive/core/constant/spacing.dart';
import 'package:dine_hive/core/route/app_route_constant.dart';
import 'package:dine_hive/core/theme/src/theme_extensions/color_palette.dart';
import 'package:dine_hive/core/widgets/custom_app_bar.dart';
import 'package:dine_hive/src/data/providers/cart_screen_provider.dart';
import 'package:dine_hive/src/data/providers/order_screen_provider.dart';
import 'package:dine_hive/src/features/user/order_screen/order_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

class ScheduleTimeScreen extends StatelessWidget {
  const ScheduleTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.pagePadding),
          child: Expanded(
            child: Consumer<CartScreenProvider>(
              builder: (context, cartProvider,_) {
                return Column(
                  children: [
                    const CustomAppBarWidget(appBarTitle: 'Select Time Schedule',),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            TableCalendar(
                              firstDay: DateTime.now(),
                              lastDay: DateTime.utc(2030, 12, 31),
                              focusedDay: cartProvider.focusedDay,
                              selectedDayPredicate: (day) {
                                return isSameDay(cartProvider.selectedDay, day);
                              },
                              onDaySelected: (selectedDay, focusedDay) {
                                cartProvider.daySelection(selectedDay, focusedDay);
                              },
                              calendarStyle: const CalendarStyle(
                                todayDecoration: BoxDecoration(
                              color: AppColors.orangeColor,
                                  shape: BoxShape.circle,
                                ),
                                selectedDecoration: BoxDecoration(
                                  color:AppColors.primaryColor,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              headerStyle: const HeaderStyle(
                                formatButtonVisible: false,
                                titleCentered: true,
                              ),
                            ),
                            const SizedBox(height: 16),
                            if (cartProvider.selectedDay != null) ...[
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Select a Time Slot',
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Wrap(
                                spacing: 8,
                                runSpacing: 8,
                                children: cartProvider.timeSlots.map((slot) {
                                  final isSelected = cartProvider.selectedTimeSlot == slot;
                                  return ChoiceChip(
                                    label: Text(slot),
                                    selected: isSelected,
                                    onSelected:  (_) => cartProvider.selectedSlot(slot),
                                    selectedColor: AppColors.primaryColor,
                                    labelStyle: TextStyle(
                                      color: isSelected ? AppColors.whiteColor : AppColors.blackColor,
                                    ),
                                  );
                                }).toList(),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ),
                    cartProvider.selectedTimeSlot!=null?SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){
                        context.push(AppRouteConstant.chooseTableScreen);
                      }, child: Text('Next',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.whiteColor),)),
                    ):const SizedBox()
                  ],
                );
              }
            ),
          ),
        ),
      ),
    );
  }
}
