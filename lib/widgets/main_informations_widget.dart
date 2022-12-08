import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../theme/colors.dart';

class MainInformationsWidget extends StatelessWidget {
  final String userName;
  final String imagePath;
  final String city;
  final String country;
  final bool isLogged;

  const MainInformationsWidget({
    super.key,
    required this.userName,
    required this.imagePath,
    required this.city,
    required this.country,
    required this.isLogged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 285,
      decoration: const BoxDecoration(
          color: CustomColors.customPrimaryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(45),
              bottomRight: Radius.circular(45))),
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey[900],
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.grey[800],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userName,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Text(
                              'Welcome, ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              (() {
                                if (!isLogged) {
                                  return 'Sign in here';
                                }

                                return '';
                              })(),
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.more_vert_outlined,
                    color: CustomColors.customOrange,
                    size: 30,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    size: 40,
                    color: CustomColors.customOrange,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      '$city, $country',
                      style: const TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: CustomColors.customOrange,
                    size: 30,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: CustomColors.customOrange,
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintText: 'Search here',
                  hintStyle: TextStyle(color: Colors.grey[300]),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                        color: CustomColors.customPrimaryColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: CustomColors.customPrimaryColor),
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
