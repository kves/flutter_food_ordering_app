import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_food_ordering_app/theme/colors.dart';

class ProductScreen extends StatelessWidget {
  final String productName;
  final String productImagePath;
  final String productIngredientPath;
  final String productPrice;
  const ProductScreen({
    super.key,
    required this.productName,
    required this.productImagePath,
    required this.productIngredientPath,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Details',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: CustomColors.customPrimaryColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: CustomColors.customOrange,
            size: 18,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_outlined,
              color: CustomColors.customOrange,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: const BoxDecoration(
                color: CustomColors.customPrimaryColor,
              ),
              child: Text(
                productName,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.grey[200],
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 24,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        productIngredientPath,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.grey[200],
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 24,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        productIngredientPath,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.grey[200],
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 24,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        productIngredientPath,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.grey[200],
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 24,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        productIngredientPath,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.grey[200],
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 24,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        productIngredientPath,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Image.asset(
              productImagePath,
              scale: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  const Text(
                    'Price: ',
                    style: TextStyle(
                      fontSize: 20,
                      color: CustomColors.customOrange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    productPrice,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
