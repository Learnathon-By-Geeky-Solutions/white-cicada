import 'package:dine_hive/core/constant/texts.dart';
import 'package:dine_hive/src/features/user/choose_table/widget/table_book_button.dart';
import 'package:dine_hive/src/data/models/restaurent_table_model.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../core/constant/spacing.dart';
import '../../../../data/static_restaurent_table_data.dart';

class ChooseTableScreenBody extends StatefulWidget {
  const ChooseTableScreenBody({super.key});

  @override
  State<ChooseTableScreenBody> createState() => _ChooseTableScreenBodyState();
}

class _ChooseTableScreenBodyState extends State<ChooseTableScreenBody> {
  List<RestaurentTableModel>? getTablesById(String id, List<RestaurentTableModel> dummyTables) {
    try{
      List<RestaurentTableModel> tables = dummyTables.where((table) => table.sId == id).toList();
      return tables;
    }catch(e) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    List<RestaurentTableModel>? tables = getTablesById('4', dummyTables);
    double height = AppSpacing.screenHeight(context);
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32),
      child: SingleChildScrollView(
        child: SizedBox(
          height: height*0.6,
          child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 40,
              mainAxisSpacing: 20,
              childAspectRatio: 1.2
          ),
              itemCount: tables?.length ?? 0,
              itemBuilder: (context, index) {
            final RestaurentTableModel? table = tables?[index];
            if(table == null) return Text(AppText.noData);
            else return TableBookButton(table: table, onPressed: (){
                //LOGIC
            });
              }),
        ),
      ),
    );
  }
}
