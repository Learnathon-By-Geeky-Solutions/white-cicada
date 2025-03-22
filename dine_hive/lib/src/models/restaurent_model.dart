class RestaurantModel {
  final String sId;
  final String restaurantName;
  final int restaurantCode;
  final String restaurantDescription;
  final String img;
  final bool isPopular;
  final List<String> listOfTable;
  final List<String> listOfFood;
  final List<double> ratings;
  final int orderQty;

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
        required this.orderQty}
      );
}