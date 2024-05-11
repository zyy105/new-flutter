import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/model/auth/login_model.dart';

import '../pubs/provider_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(51, 71, 97, 1),
      body: ProviderWidget<LoginModel>(
          model: LoginModel(),
    builder: (context, provider, child) {
    return ListView(
    padding: EdgeInsets.symmetric(horizontal: sw(32)),
    // mainAxisAlignment: MainAxisAlignment.center,
    // crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
    SizedBox(height: sh(293)),
    _title(),
    SizedBox(height: sh(101)),
    _userName(provider),
    SizedBox(height: sh(32)),
    _policeNo(provider),
    SizedBox(height: sh(32)),
    _password(provider),
//                  _forget(context),
    SizedBox(height: sh(32)),
    _login(context, provider)
    ],
    );
    },
    );
  }
}
