import 'package:cheesesteak_locator/login_and_signoff/login_input.dart';
import 'package:cheesesteak_locator/login_and_signoff/signoff.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 140.0,
              width: 50.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage('images/banner.png'),
                ),
              ),
            ),
            LoginInput(),
          ],
        ),
      ),
    );
  }
}
