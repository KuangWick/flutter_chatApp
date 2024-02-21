import 'package:chat_app/pages/login_page.dart';
import 'package:chat_app/pages/register_page.dart';
import 'package:flutter/material.dart';
class LoginPageOrRegisterPage extends StatefulWidget {
  const LoginPageOrRegisterPage({super.key});

  @override
  State<LoginPageOrRegisterPage> createState() => _LoginPageOrRegisterPageState();
}

class _LoginPageOrRegisterPageState extends State<LoginPageOrRegisterPage> {

  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(
        onTap: togglePages,
      );
    } else {
      return RegisterPage(
        onTap: togglePages,
      );
    }
  }
}
