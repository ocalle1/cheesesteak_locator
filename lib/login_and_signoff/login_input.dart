import 'package:flutter/material.dart';

class LoginInput extends StatelessWidget {
  const LoginInput({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialAppused b/c it givesmore access to more material widgets
    return const MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Username',
                ),
              ),
            ),
            Center(
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'password',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
