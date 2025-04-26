import 'package:dine_hive/src/features/user/choose_table/widget/choose_table_screen_body.dart';
import 'package:dine_hive/src/features/user/choose_table/widget/choose_table_screen_header.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ChooseTableScreen extends StatefulWidget {
  const ChooseTableScreen({super.key});

  @override
  State<ChooseTableScreen> createState() => _ChooseTableScreenState();
}

class _ChooseTableScreenState extends State<ChooseTableScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SafeArea(child: Column(
          children: [
            ChooseTableScreenHeader(),
            ChooseTableScreenBody()
          ],
        )),
      )
    );
  }
}
