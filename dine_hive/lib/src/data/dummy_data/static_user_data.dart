import 'package:dine_hive/src/data/models/user_model.dart';

final UserModel staticUser = UserModel(
  userId: 'user123',
  userEmail: 'johndoe@example.com',
  userName: 'John Doe',
  userBio: 'I am a passionate food enthusiast.',
  userPhone: '+1234567890',
  image: 'https://example.com/images/john_doe.png',
  bookingHistory: ['booking001', 'booking002', 'booking003'],
  presentBookings: ['booking004', 'booking005'],
  coupons: ['WELCOME10', 'SUMMER25'],
);
