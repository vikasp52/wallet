import 'package:flutter/material.dart';
import 'package:wallet/screens/wallet/widgets/card_widget.dart';
import 'package:wallet/screens/wallet/widgets/custom_button.dart';
import 'package:wallet/utils/colors.dart';
import 'package:wallet/widgets/appbaer.dart';
import 'package:wallet/widgets/card_title.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppBarWidget(title: 'MY WALLET'),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Available Balance',
                  style: TextStyle(
                    color: CustomColor.whiteColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '\$ 18 420.81',
                  style: TextStyle(
                    color: CustomColor.whiteColor,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CustomButton(
                      label: 'Pay',
                      iconData: Icons.arrow_upward,
                      color: CustomColor.whiteColor,
                      buttonColor: CustomColor.lightBlueColor,
                    ),
                    CustomButton(
                      label: 'Request',
                      iconData: Icons.arrow_downward,
                      color: CustomColor.blackColor,
                      buttonColor: CustomColor.whiteColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Card(
              margin: const EdgeInsets.all(0),
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  right: 40,
                  top: 20,
                ),
                child: Column(
                  children: [
                    const CardTitle(
                      title: 'My Cards',
                      iconData: Icons.add,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index) => const CardWidget(
                          imagePath: 'assets/mastercard-logo.png',
                          cardType: 'Platinum',
                          name: 'ARAVIND S',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
