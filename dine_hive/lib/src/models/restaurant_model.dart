class RestaurantModel {
  String sId;
  String restaurantName;
  int restaurantCode;
  String restaurantDescription;
  String img;
  bool isPopular;
  List<String> listOfTable;
  List<String> listOfFood;
  List<double> ratings;
  int orderQty;

  RestaurantModel(
      {required this.sId,
      required this.restaurantName,
      required this.restaurantCode,
      required this.restaurantDescription,
      required this.img,
      required this.isPopular,
      required this.listOfTable,
      required this.listOfFood,
      required this.ratings,
      required this.orderQty});
}
