import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import '../../models/user_model.dart';

class UserRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  /// Collection reference
  CollectionReference get _userCollection => _firestore.collection('users');

  /// Create or update user in Firestore
  Future<void> saveUser(UserModel user) async {
    debugPrint('userRepo Calling');
    try {
      await _userCollection.doc(user.userId).set(user.toJson(), SetOptions(merge: true));
    } catch (e) {
      rethrow;
    }
  }

  /// Get user by ID
  Future<UserModel?> getUserById(String uid) async {
    try {
      final doc = await _userCollection.doc(uid).get();
      if (doc.exists) {
        return UserModel.fromJson(doc.data() as Map<String, dynamic>);
      }
      return null;
    } catch (e) {
      rethrow;
    }
  }
}
