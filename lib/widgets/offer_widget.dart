import 'package:flutter/material.dart';
import 'package:flutter_food_ordering_app/theme/colors.dart';

class OfferWidget extends StatelessWidget {
  final String offerName;
  final String offerImagePath;

  const OfferWidget({
    super.key,
    required this.offerName,
    required this.offerImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        height: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(46), bottomRight: Radius.circular(46)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    width: 170,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: CustomColors.customOrange,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(36),
                          bottomRight: Radius.circular(36)),
                    ),
                    child: const Center(
                      child: Text(
                        'Offer',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: 150,
                    child: Text(
                      offerName,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(46),
                    bottomRight: Radius.circular(46)),
                child: Image.asset(
                  offerImagePath,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
