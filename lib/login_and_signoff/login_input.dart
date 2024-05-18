import 'package:flutter/material.dart';

class LoginInput extends StatelessWidget {
  const LoginInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MaterialAppused b/c it givesmore access to more material widgets
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              height: 370.0,
              width: 370.0,
              color: Color(0xffFF0E58),
              child: Center(),
            ),
          ),
        ),
      ),
    );
  }
}
