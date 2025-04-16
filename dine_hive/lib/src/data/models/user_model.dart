class UserModel {
  final String userId;
  final String userEmail;
  final String userName;
  final String? userBio;
  final String? userPhone;
  final String image;
  final List<String>? bookingHistory;
  final List<String>? presentBookings;
  final List<String>? coupons;

  UserModel({
    required this.userId,
    required this.userEmail,
    required this.userName,
    this.userBio,
    this.userPhone,
    required this.image,
    this.bookingHistory,
    this.presentBookings,
    this.coupons,
  });
}
