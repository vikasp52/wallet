import 'package:flutter/material.dart';
import 'package:wallet/screens/transection/widgets/chart.dart';
import 'package:wallet/screens/transection/widgets/transections.dart';
import 'package:wallet/utils/colors.dart';
import 'package:wallet/widgets/appbaer.dart';

class TransectionScreen extends StatelessWidget {
  const TransectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backgroundColor,
      body: Column(
        children: [
          const AppBarWidget(
            title: 'MY TRANSACTIONS',
          ),
          ChartScreen(),
          const SizedBox(
            height: 20,
          ),
          const MyTransections(),
        ],
      ),
    );
  }
}
