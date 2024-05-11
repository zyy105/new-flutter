import 'package:flutter/cupertino.dart';

class LoginModel with ChangeNotifier {
  TextEditingController userName = TextEditingController(text: '管理员');
  TextEditingController password = TextEditingController(text: '123456');
  bool isCanLogin = false;
  bool obscureText = false;

  LoginModel() {
    isCanLogin = false;
    obscureText = true;
  }

  void setObscure() {
    obscureText = !obscureText;
    notifyListeners();
  }
}