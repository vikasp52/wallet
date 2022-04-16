import 'package:flutter/material.dart';
import 'package:wallet/utils/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.label,
    required this.iconData,
    required this.color,
    required this.buttonColor,
  }) : super(key: key);

  final String label;
  final IconData iconData;
  final Color color;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 150,
      color: buttonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      onPressed: () {},
      child: Row(
        children: [
          Icon(
            iconData,
            size: 20,
            color: color,
          ),
          const SizedBox(
            width: 6,
          ),
          Text(label,
              style: TextStyle(
                color: color,
              )),
        ],
      ),
    );
  }
}
