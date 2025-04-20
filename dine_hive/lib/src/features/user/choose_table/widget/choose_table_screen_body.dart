import 'package:dine_hive/core/constant/texts.dart';
import 'package:dine_hive/core/route/app_route_constant.dart';
import 'package:dine_hive/src/features/user/choose_table/widget/table_book_button.dart';
import 'package:dine_hive/src/data/models/restaurent_table_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../../../core/constant/spacing.dart';
import '../../../../data/dummy_data/static_restaurant_table_data.dart';
import '../../../../data/providers/cart_screen_provider.dart';

class ChooseTableScreenBody extends StatefulWidget {
  const ChooseTableScreenBody({super.key});

  @override
  State<ChooseTableScreenBody> createState() => _ChooseTableScreenBodyState();
}

class _ChooseTableScreenBodyState extends State<ChooseTableScreenBody> {
  List<RestaurentTableModel>? getTablesById(String id, List<RestaurentTableModel> dummyTables) {
    try{
      List<RestaurentTableModel> tables = dummyTables.where((table) => table.restaurantId == id).toList();
      return tables;
    }catch(e) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    List<RestaurentTableModel>? tables = getTablesById(Provider.of<CartScreenProvider>(context).restaurantId, dummyTables);
    double height = AppSpacing.screenHeight(context);
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32),
      child: SingleChildScrollView(
        child: SizedBox(
          height: height*0.6,
          child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 40,
              mainAxisSpacing: 20,
              childAspectRatio: 1.2
          ),
              itemCount: tables?.length ?? 0,
              itemBuilder: (context, index) {
            final RestaurentTableModel? table = tables?[index];
            if(table == null) {
              return const Text(AppText.noData);
            } else {
              return TableBookButton(table: table, onPressed: (){
                Provider.of<CartScreenProvider>(context, listen: false).tableNo = table.tableNo;
                context.push(AppRouteConstant.orderScreen);
            });
            }
              }),
        ),
      ),
    );
  }
}
