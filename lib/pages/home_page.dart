import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_food_ordering_app/theme/colors.dart';
import 'package:flutter_food_ordering_app/widgets/main_informations_widget.dart';
import 'package:flutter_food_ordering_app/widgets/offer_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: const [
        MainInformationsWidget(
          userName: 'Guest',
          imagePath: 'imagePath',
          city: 'Warsaw',
          country: 'Poland',
          isLogged: false,
        ),
        SizedBox(height: 25),
        OfferWidget(
            offerName: 'Buy One Get One Free',
            offerImagePath: 'lib/resources/images/products/burger_offer.jpg'),
      ],
    ));
  }
}
