import 'package:flutter/material.dart';
import 'package:wallet/utils/colors.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.imagePath,
    required this.cardType,
    required this.name,
  }) : super(key: key);

  final String imagePath;
  final String cardType;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Container(
        decoration: const BoxDecoration(
          color: CustomColor.darkBlueColor,
          borderRadius: BorderRadius.all(
            Radius.circular(
              10,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    imagePath,
                    height: 30,
                  ),
                  Text(
                    cardType,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '****  ****  ****  43231',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
