import 'package:flutter/cupertino.dart';

class AppSpacing{
  static const double pagePadding = 16.00;
  double screenHeight(BuildContext context){
    return MediaQuery.of(context).size.height;
  }
  double screenWidth(BuildContext context){
    return MediaQuery.of(context).size.width;
  }
}