import 'package:flutter/cupertino.dart';

class LoginProvider extends ChangeNotifier{
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
}