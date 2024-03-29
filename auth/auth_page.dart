import '/pages/register_page.dart';
import '/pages/login.dart';
import 'package:flutter/material.dart';
//import 'package:dimentia1/pages/register_page.dart';
//import 'package:dimentia1/pages/login.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}
class _AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;
  void toggleScreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(showRegisterPage: toggleScreens);
    } else{
      return RegisterPage(showLoginPage: toggleScreens);
    }
  }
}