import 'package:flutter/material.dart';
import 'package:wallet/utils/colors.dart';
import 'package:wallet/widgets/card_title.dart';

class MyTransections extends StatelessWidget {
  const MyTransections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                title: 'My Transections',
                iconData: Icons.filter_list_outlined,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => ListTile(
                    leading: const ClipOval(
                        child: Material(
                      color: CustomColor.lightYellowColor,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 10,
                        ),
                        child: Text(
                          'B',
                          style: TextStyle(
                            color: CustomColor.yellowColor,
                          ),
                        ),
                      ),
                    )),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          '5 Sept 2020',
                        ),
                        Text(
                          'Sent',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    title: const Text('Bitcoin',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    subtitle: const Text('-0.30533 BTC'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
