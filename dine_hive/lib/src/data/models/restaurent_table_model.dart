class RestaurentTableModel {
  final String restaurantId;
  final int tableNo;
  final int numberOfSeats;
  final String tableStatus;
  final List<String> tableImg;
  RestaurentTableModel(
  {required this.restaurantId,
    required this.tableNo,
    required this.numberOfSeats,
    required this.tableStatus,
    required this.tableImg
  });
}