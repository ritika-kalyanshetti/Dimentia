import 'package:flutter/material.dart';

import 'widgets/header_widget.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}): super(key:key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  double _headerHeight = 250;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(
                children: [
                  Container(
                    height: _headerHeight,
                    child: HeaderWidget(_headerHeight, true, Icons.login_rounded),
                  ),
                  SafeArea(
                    child: Container( //login form
                      child: Column(
                          children: [
                            Text(
                              'Hello',
                                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                            )
                          ],
                      )
                    ),
                  ),
                ],
            ),
        ),
    );
  }
}