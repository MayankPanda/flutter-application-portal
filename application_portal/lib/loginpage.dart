import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  final _userfieldcontroller = TextEditingController();
  final _passwordfieldcontroller = TextEditingController();
  String usernameInput = '';
  String passwordInput = '';
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 200,
          width: 100,
        ),
        Text(usernameInput),
        TextField(
          controller: _userfieldcontroller,
          decoration: InputDecoration(
            hintText: "Username",
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: 80,
          width: 100,
        ),
        Text(passwordInput),
        TextField(
          obscureText: true,
          controller: _passwordfieldcontroller,
          decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(),
          ),
        ),
      ]),
    );
  }
}
