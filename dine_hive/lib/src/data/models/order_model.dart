import 'food_model.dart';

class OrderModel {
  final String uId;
  final String userName;
  final String hotelId;
  final String hotelName;
  final int seatNo;
  final String tablePrice;
  final int totalPrice;
  List<FoodModel>? foodItemList;

  OrderModel({
    required this.uId,
    required this.userName,
    required this.hotelId,
    required this.hotelName,
    required this.seatNo,
    required this.tablePrice,
    required this.totalPrice,
    required this.foodItemList,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      uId: json['uId'] as String,
      userName: json['userName'] as String,
      hotelId: json['hotelId'] as String,
      hotelName: json['hotelName'] as String,
      seatNo: json['seatNo'] as int,
      tablePrice: json['tablePrice'] as String,
      totalPrice: json['totalPrice'] as int,
      foodItemList: (json['foodItemList'] as List<dynamic>)
          .map((item) => FoodModel.fromJson(item))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uId': uId,
      'userName': userName,
      'hotelId': hotelId,
      'hotelName': hotelName,
      'seatNo': seatNo,
      'tablePrice': tablePrice,
      'totalPrice': totalPrice,
      'foodItemList': foodItemList?.map((item) => item.toJson()).toList(),
    };
  }
}
