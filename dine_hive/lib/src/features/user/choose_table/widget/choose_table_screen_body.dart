import 'package:dine_hive/core/constant/texts.dart';
import 'package:dine_hive/src/features/user/choose_table/widget/table_book_button.dart';
import 'package:dine_hive/src/data/models/restaurant_table_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../../../../../core/constant/spacing.dart';
import '../../../../data/providers/choose_table_provider.dart';
import '../../../../data/static_restaurant_table_data.dart';

class ChooseTableScreenBody extends StatefulWidget {
  const ChooseTableScreenBody({super.key});

  @override
  State<ChooseTableScreenBody> createState() => _ChooseTableScreenBodyState();
}

class _ChooseTableScreenBodyState extends State<ChooseTableScreenBody> {

  @override
  Widget build(BuildContext context) {
    //Fetch provider instance
    final chooseTableProvider = Provider.of<ChooseTableProvider>(context, listen: false);

    //Retrieve the tables based on the restaurant ID
    final tables = chooseTableProvider.getTablesById('1', dummyTables);

    double height = AppSpacing.screenHeight(context);
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32),
      child: SingleChildScrollView(
        child: SizedBox(
          height: height*0.5,
          child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 40,
              mainAxisSpacing: 20,
              childAspectRatio: 1.2
          ),
              itemCount: tables?.length ?? 0,
              itemBuilder: (context, index) {
            final RestaurantTableModel? table = tables?[index];
            if(table == null) {
              return const Text(AppText.noData);
            } else {
              return TableBookButton(table: table, onPressed: (){
                //LOGIC
            });
            }
              }),
        ),
      ),
    );
  }
}
