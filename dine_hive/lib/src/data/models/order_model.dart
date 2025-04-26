import 'food_model.dart';

class OrderModel {
  final String userId;
  final String userName;
  final String hotelId;
  final String hotelName;
  final int tableNo;
  final double tablePrice;
  final double totalPrice;
  List<FoodModel>? foodItemList;

  OrderModel({
    required this.userId,
    required this.userName,
    required this.hotelId,
    required this.hotelName,
    required this.tableNo,
    required this.tablePrice,
    required this.totalPrice,
    required this.foodItemList,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      userId: json['uId'] as String,
      userName: json['userName'] as String,
      hotelId: json['hotelId'] as String,
      hotelName: json['hotelName'] as String,
      tableNo: json['seatNo'] as int,
      tablePrice: json['tablePrice']! as double,
      totalPrice: json['totalPrice'] as double,
      foodItemList: (json['foodItemList'] as List<dynamic>)
          .map((item) => FoodModel.fromJson(item))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uId': userId,
      'userName': userName,
      'hotelId': hotelId,
      'hotelName': hotelName,
      'seatNo': tableNo,
      'tablePrice': tablePrice,
      'totalPrice': totalPrice,
      'foodItemList': foodItemList?.map((item) => item.toJson()).toList(),
    };
  }
}
