import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../repositories/user_repository/user_repository.dart';

class UserProvider with ChangeNotifier {
  ///initialize userRepository
  final UserRepository _userRepository = UserRepository();
  ///Initialize all the controller from signup screen
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  TextEditingController get nameController => _nameController;
  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;

  UserModel? _user;
  UserModel? get user => _user;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  /// Load user by UID
  Future<void> loadUser(String uid) async {
    _isLoading = true;
    notifyListeners();

    try {
      _user = await _userRepository.getUserById(uid);
    } catch (e) {
      debugPrint("Load user error: $e");
    }

    _isLoading = false;
    notifyListeners();
  }

  /// Create or update user
  Future<void> createUser() async {
    try {
      FirebaseAuth fireAuth =FirebaseAuth.instance;
      String uid = fireAuth.currentUser!.uid.toString();
      UserModel userModel = UserModel(
          userId: uid,
          userEmail: emailController.text.toString(),
          userName: nameController.text.toString(),
          image: '',
          bookingHistory: [''],
          coupons: [''],
          presentBookings: [''],
          userBio: '',
          userPhone: '',
          userRole: 'user');
      debugPrint('user Provider Calling');
      await _userRepository.saveUser(userModel);
      _user = userModel;
      debugPrint('User created');
      notifyListeners();
    } catch (e) {
      debugPrint("Save user error: $e");
    }
  }
}
