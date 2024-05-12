import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/pubs/screen_util.dart';
import 'package:flutter_application_1/providers/auth/login_page_provider.dart';

import '../pubs/provider_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(51, 71, 97, 1),
      body: ProviderWidget<LoginPageProvider>(
        model: LoginPageProvider(),
        builder: (context, provider, child) {
          return ListView(
            padding: EdgeInsets.symmetric(horizontal: sw(32)),
            children: <Widget>[
              SizedBox(height: sh(293)),
              _title(),
              SizedBox(height: sh(101)),
              _userName(provider),
              SizedBox(height: sh(32)),
              _password(provider),
              SizedBox(height: sh(32)),
              _login(context, provider)
            ],
          );
        },
      ),
    );
  }

  Widget _title() {
    return Container(
      alignment: Alignment.center,
      child: Text(
        '济南市公安局侦查打击一体化平台',
        style: TextStyle(
          fontSize: sp(48),
          color: Colors.blue,
          fontWeight: FontWeight.w300,
          letterSpacing: sw(1),
        ),
      ),
    );
  }

  Widget _userName(LoginPageProvider provider) {
    return SizedBox(
      height: sw(90),
      width: sw(596),
      child: TextField(
        controller: provider.userNameController,
        style: const TextStyle(
          color: Colors.white,
        ),
        maxLength: 30,
        maxLines: 1,
        decoration: InputDecoration(
          counterText: '',
          prefixIcon: Icon(
            const IconData(0xe628, fontFamily: 'ALiIconFont'),
            color: Colors.white,
            size: sw(32),
          ),
          hintText: '请输入账号',
          hintStyle: TextStyle(
              color: const Color.fromRGBO(111, 121, 133, 1), fontSize: sp(30)),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
          border: const OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: sw(1),
              color: const Color.fromRGBO(111, 121, 133, 1),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: sw(1),
              color: Colors.blue,
            ),
          ),
        ),
        textInputAction: TextInputAction.done,
      ),
    );
  }

  Widget _password(LoginPageProvider provider) {
    return Stack(
      children: <Widget>[
        SizedBox(
          height: sw(90),
          // width: sw(596),
          child: TextField(
            controller: provider.passwordController,
            style: const TextStyle(
              color: Colors.white,
            ),
            maxLength: 30,
            maxLines: 1,
            decoration: InputDecoration(
              counterText: '',
              prefixIcon: Icon(
                const IconData(0xe607, fontFamily: 'ALiIconFont'),
                color: Colors.white,
                size: sw(32),
              ),
              hintText: '请输入密码',
              hintStyle: TextStyle(
                  color: const Color.fromRGBO(111, 121, 133, 1),
                  fontSize: sp(30)),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
              border: const OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: sw(1),
                  color: const Color.fromRGBO(111, 121, 133, 1),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: sw(1),
                  color: Colors.blue,
                ),
              ),
            ),
            textInputAction: TextInputAction.done,
            obscureText: provider.obscureText,
          ),
        ),
        Positioned(
          right: 0,
          child: GestureDetector(
            onTap: () => provider.setObscure(),
            child: SizedBox(
              height: sw(90),
              width: sw(100),
              child: Icon(
                provider.obscureText
                    ? const IconData(
                        0xe605,
                        fontFamily: 'ALiIconFont',
                      )
                    : const IconData(
                        0xe604,
                        fontFamily: 'ALiIconFont',
                      ),
                size: sw(32),
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _login(BuildContext context, LoginPageProvider provider) {
    return GestureDetector(
      onTap: () => provider.login(context),
      child: Container(
        alignment: Alignment.center,
        width: sw(596),
        height: sw(90),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(sw(45)),
        ),
        child: Text(
          '登录',
          style: TextStyle(
            color: Colors.white,
            fontSize: sp(30),
          ),
        ),
      )
    );
  }
}
