class RestaurentTableModel {
  final String sId;
  final int tableNo;
  final int numberOfSeats;
  final String tableStatus;
  final List<String> tableImg;
  RestaurentTableModel(
  {required this.sId,
    required this.tableNo,
    required this.numberOfSeats,
    required this.tableStatus,
    required this.tableImg
  });
}