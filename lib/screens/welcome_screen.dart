import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_food_ordering_app/theme/colors.dart';

import '../pages/home_page.dart';
import '../theme/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.customPrimaryColor,
      body: Column(
        children: [
          // burger image

          Stack(
            children: [
              Opacity(
                opacity: 0.3,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 90,
                    right: 90,
                    top: 30,
                    bottom: 20,
                  ),
                  child: Image.asset(
                      'lib/resources/images/products/burger_welcome.png',
                      color: Colors.white),
                ),
              ),
              ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 90,
                      right: 90,
                      top: 30,
                      bottom: 20,
                    ),
                    child: Image.asset(
                        'lib/resources/images/products/burger_welcome.png'),
                  ),
                ),
              ),
            ],
          ),

          //texts container
          Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(46),
                    bottomRight: Radius.circular(46)),
                color: CustomColors.customPrimaryColor,
                border: Border.all(
                  color: Colors.grey.withOpacity(0.3),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 50,
                  ),
                ]),
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            child: Column(
              children: [
                const Text(
                  'Welcome',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'TO',
                  style: TextStyle(
                      color: CustomColors.customOrange,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'NH Food Delivery Shop',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),

                //let's go button
                GestureDetector(
                  onTap: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: ((context) {
                    return const HomePage();
                  }))),
                  child: Container(
                    padding: const EdgeInsets.only(
                      left: 120,
                      right: 120,
                      top: 20,
                      bottom: 20,
                    ),
                    decoration: const BoxDecoration(
                      color: CustomColors.customOrange,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(46),
                          bottomRight: Radius.circular(46)),
                    ),
                    child: const Text(
                      "Let's Go",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
