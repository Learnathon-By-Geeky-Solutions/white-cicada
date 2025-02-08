import 'package:flutter/cupertino.dart';

class AppSpacing{
  static const double pagePadding = 16.00;
  static double screenHeight(BuildContext context){
    return MediaQuery.of(context).size.height;
  }
  static double screenWidth(BuildContext context){
    return MediaQuery.of(context).size.width;
  }
}