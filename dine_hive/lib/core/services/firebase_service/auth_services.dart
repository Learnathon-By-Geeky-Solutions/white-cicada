import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dine_hive/src/data/providers/splash_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../constant/key.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  /// Sign up with email and password
  Future<UserCredential?> signUpWithEmail(String email, String password) async {
    try {
      final UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      ///init SharedPreferences
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      ///set user data & login data
      await prefs.setBool(AppKeys.isLogin, true);
      await prefs.setString(AppKeys.userRole, 'user');
      return userCredential;
    } on FirebaseAuthException catch (e) {
      debugPrint("Sign Up Error: ${e.message}");
      rethrow;
    }
  }

  /// Sign in with email and password
  Future<UserCredential?> signInWithEmail(String email, String password,BuildContext context) async {
    try {
      final UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = userCredential.user;
      if (user != null) {
        ///get user data from firebase & init SharedPreferences
        final doc = await _firestore.collection('users').doc(user.uid).get();
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        final role = doc.data()?['userRole'] ?? 'user';

        ///set user login & role data
        await prefs.setBool(AppKeys.isLogin, true);
        await prefs.setString(AppKeys.userRole, role);
        debugPrint('Login success - role saved: $role');

        Provider.of<SplashProvider>(context,listen: false).route(context, role);

      }

      return userCredential;
    } on FirebaseAuthException catch (e) {
      debugPrint("Sign In Error: ${e.message}");
      rethrow;
    }
  }


  /// Send password reset email
  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      debugPrint("Reset Password Error: ${e.message}");
      rethrow;
    }
  }

  /// Sign in with Google
  Future<UserCredential?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) return null; // Cancelled by user

      final GoogleSignInAuthentication googleAuth =
      await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      return await _auth.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      debugPrint("Google Sign-In Error: ${e.message}");
      rethrow;
    }
  }

  /// Sign out from all providers
  Future<void> signOut() async {
    await GoogleSignIn().signOut();
    await _auth.signOut();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(AppKeys.isLogin, false);
  }

  /// Get current user
  User? get currentUser => _auth.currentUser;

}
