import 'package:flutter/material.dart';

class LoginPageProvider with ChangeNotifier {
  TextEditingController userNameController = TextEditingController(text: '管理员');
  TextEditingController passwordController =
      TextEditingController(text: '123456');
  bool isCanLogin = false;
  bool obscureText = true;

  LoginPageProvider() {
    isCanLogin = false;
    obscureText = true;
  }

  Future<void> login(BuildContext context) async {
    if (userNameController.text.isNotEmpty &&
        passwordController.text.isNotEmpty) {
      // var params = {
      //   'userName': userNameController.text,
      //   'password': passwordController.text,
      // };
      Navigator.of(context).popAndPushNamed('/');
    }
  }

  void setObscure() {
    obscureText = !obscureText;
    notifyListeners();
  }
}
