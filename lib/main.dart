import 'package:cheesesteak_locator/search_screen.dart';
import 'package:cheesesteak_locator/widgets/cheesestak_map.dart';
import 'package:cheesesteak_locator/widgets/cheesestak_map.dart';
import 'package:flutter/material.dart';
// import 'package:cheesesteak_locator/login_and_signoff/login_input.dart';
// import 'package:cheesesteak_locator/login_and_signoff/signoff.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart'; //google map for restaurant locations

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Row(
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Text('Drawer Header'),
                  ),
                ],
                // SearchScreen(),
              ),
              Builder(
                builder: (context) {
                  return ListTile(
                    title: const Text('Search'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SearchScreen()),
                      );
                    },
                  );
                },
              ),
              // ListTile(
              //   title: const Text('Map'),
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => const GoogleMaps()),
              //     );
              //   },
              // ),
              ListTile(title: const Text('Item 1'), onTap: () {}),
              ListTile(title: const Text('Item 2'), onTap: () {}),
              ListTile(title: const Text('Item 3'), onTap: () {}),
              ListTile(title: const Text('Item 4'), onTap: () {}),
            ],
          ),
        ),
        body: const Stack(
          children: [
            Positioned.fill(
              child: CarouselImages(),
            ),

            // LoginInput(),
            // Positioned.fill(
            //   child: LoginInput(),
            // ),
          ],
        ),
      ),
    );
  }
  // CheeseSteakMap(),
}

class CarouselImages extends StatelessWidget {
  const CarouselImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1665940482653-ab7d3164b2f5?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        ),
                        fit: BoxFit.fitHeight)),
              ),
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJlGnv0Ub9DM3X09m5Rh6c9qgrTYSPokd1Nw&usqp=CAU',
                        ),
                        fit: BoxFit.fitHeight)),
              ),
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                        image: NetworkImage(
                          'data:image/jpeg;base64,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',
                        ),
                        fit: BoxFit.fitHeight)),
              )
            ],
            options: CarouselOptions(
                height: 380,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8),
          ),
        ],
      ),
    );
  }
}
