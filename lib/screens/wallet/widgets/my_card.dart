import 'package:flutter/material.dart';
import 'package:wallet/utils/colors.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'My Cards',
          style: TextStyle(
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
          child: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 6,
            ),
            child: Icon(
              Icons.add,
              color: CustomColor.whiteColor,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}
