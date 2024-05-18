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
            Positioned.fill(
              child: Image.asset(
                'assets/images/images.jpg', // Replace 'background_image.jpg' with your actual image path
                fit: BoxFit.cover,
              ),
            ),
            // BackGroundImage(),
            LoginInput(),
          ],
        ),
      ),
    );
  }
}
