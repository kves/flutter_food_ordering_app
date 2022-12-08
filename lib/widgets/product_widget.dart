import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_food_ordering_app/theme/colors.dart';

class ProductWidget extends StatelessWidget {
  final String productName;
  final String productImagePath;
  final String productPrice;
  final String productRating;

  const ProductWidget({
    super.key,
    required this.productName,
    required this.productImagePath,
    required this.productPrice,
    required this.productRating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 220,
        width: 190,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(36), bottomRight: Radius.circular(36)),
        ),
        child: Column(
          children: [
            SizedBox(
              width: 150,
              height: 120,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36)),
                child: Image.asset(
                  productImagePath,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              productName,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text(
                  '\$',
                  style: TextStyle(
                    color: CustomColors.customOrange,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  productPrice,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.only(left: 14.0),
                  child: Text(
                    '|',
                    style: TextStyle(
                      fontSize: 16,
                      color: CustomColors.customOrange,
                    ),
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.star,
                  size: 16,
                  color: CustomColors.customOrange,
                ),
                Text(
                  productRating,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
