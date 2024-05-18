import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

//

class LoginInput extends StatelessWidget {
  const LoginInput({Key? key});

//!Change background image - Testing to see if I could implement properly
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('test'), centerTitle: true, backgroundColor: Colors.red),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1665940482653-ab7d3164b2f5?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return const MaterialApp(
  //     home: Scaffold(
  //       extendBodyBehindAppBar: true,
  //       body: Stack(
  //         children: [
  //           BackGroundImage(),
  //           Center(
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 // Username TextField
  //                 Padding(
  //                   padding: EdgeInsets.symmetric(horizontal: 32),
  //                   child: TextField(
  //                     obscureText: true,
  //                     decoration: InputDecoration(
  //                       labelText: 'Username',
  //                     ),
  //                   ),
  //                 ),
  //                 SizedBox(height: 16), // Add some space between fields
  //                 // Password TextField
  //                 Padding(
  //                   padding: EdgeInsets.symmetric(horizontal: 32),
  //                   child: TextField(
  //                     obscureText: true,
  //                     decoration: InputDecoration(
  //                       labelText: 'Password',
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}

class BackGroundImage extends StatelessWidget {
  const BackGroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/images/7d498f42-2e04-46a1-904c-97fa32032942.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

    // return CachedNetworkImage(
    //   imageUrl:
    //       'https://i.etsystatic.com/22350138/r/il/6569e0/5220356899/il_600x600.5220356899_koes.jpg',
    //   placeholder: (context, url) => Center(child: CircularProgressIndicator()),
    //   errorWidget: (context, url, error) => Center(child: Icon(Icons.error)),
    //   fit: BoxFit.cover,
    //   width: double.infinity,
    //   height: double.infinity,
    // );
  
