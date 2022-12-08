import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_food_ordering_app/theme/colors.dart';
import 'package:flutter_food_ordering_app/widgets/main_informations_widget.dart';
import 'package:flutter_food_ordering_app/widgets/offer_widget.dart';
import 'package:flutter_food_ordering_app/widgets/product_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MainInformationsWidget(
              userName: 'Guest',
              imagePath: 'imagePath',
              city: 'Warsaw',
              country: 'Poland',
              isLogged: false,
            ),
            const SizedBox(height: 25),
            const OfferWidget(
              offerName: 'Buy One Get One Free',
              offerImagePath: 'lib/resources/images/products/burger_offer.jpg',
            ),
            const SizedBox(height: 25),

            // Choose Your Food text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Choose Your Food',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),

            //Food categories bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  Container(
                    width: 120,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      color: CustomColors.customOrange,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(36),
                          bottomRight: Radius.circular(36)),
                    ),
                    child: const Center(
                      child: Text(
                        'All',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      width: 120,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(36),
                            bottomRight: Radius.circular(36)),
                      ),
                      child: Center(
                        child: Text(
                          'Burger',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(36),
                          bottomRight: Radius.circular(36)),
                    ),
                    child: Center(
                      child: Text(
                        'Pizza',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Products
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const ProductWidget(
                        productName: 'Buffalo Burger',
                        productImagePath:
                            'lib/resources/images/products/burger.jpg',
                        productPrice: '15',
                        productRating: '4.08'),
                    const ProductWidget(
                        productName: 'Classic Burrito',
                        productImagePath:
                            'lib/resources/images/products/burrito.jpg',
                        productPrice: '16',
                        productRating: '4.40'),
                  ],
                ),
                Column(
                  children: [
                    const ProductWidget(
                        productName: 'European Pizza',
                        productImagePath:
                            'lib/resources/images/products/pizza.jpg',
                        productPrice: '20',
                        productRating: '4.07'),
                    const ProductWidget(
                        productName: 'Chicken Tortilla',
                        productImagePath:
                            'lib/resources/images/products/tortilla.jpg',
                        productPrice: '12',
                        productRating: '4.05'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
