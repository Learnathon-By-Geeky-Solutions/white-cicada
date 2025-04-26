class UserModel {
  final String userId;
  final String userEmail;
  final String userName;
  final String userRole;
  final String? userBio;
  final String? userPhone;
  final String? image;
  final List<String>? bookingHistory;
  final List<String>? presentBookings;
  final List<String>? coupons;

  UserModel({
    required this.userId,
    required this.userEmail,
    required this.userName,
    this.userBio,
    this.userPhone,
    this.image,
    this.bookingHistory,
    this.presentBookings,
    this.coupons,
    this.userRole = 'user',
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      userId: json['userId'] ?? '',
      userEmail: json['userEmail'] ?? '',
      userName: json['userName'] ?? '',
      userRole: json['userRole'] ?? 'user',
      userBio: json['userBio']??'',
      userPhone: json['userPhone']??'',
      image: json['image']??'',
      bookingHistory: List<String>.from(json['bookingHistory'] ?? []),
      presentBookings: List<String>.from(json['presentBookings'] ?? []),
      coupons: List<String>.from(json['coupons'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'userEmail': userEmail,
      'userName': userName,
      'userRole': userRole,
      'userBio': userBio,
      'userPhone': userPhone,
      'image': image,
      'bookingHistory': bookingHistory ?? [],
      'presentBookings': presentBookings ?? [],
      'coupons': coupons ?? [],
    };
  }
}
