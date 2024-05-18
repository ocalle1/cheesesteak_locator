import 'package:cheesesteak_locator/login_and_signoff/login_input.dart';
import 'package:cheesesteak_locator/login_and_signoff/signoff.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Center(
          child: const LoginInput(),
        ));
  }
}
