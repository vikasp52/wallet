import 'package:flutter/material.dart';
import 'package:wallet/utils/colors.dart';

class CardTitle extends StatelessWidget {
  const CardTitle({
    Key? key,
    required this.title,
    required this.iconData,
  }) : super(key: key);

  final String title;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: CustomColor.blackColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Card(
          elevation: 0.0,
          color: CustomColor.darkBlueColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 6,
            ),
            child: Icon(
              iconData,
              color: CustomColor.whiteColor,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}
