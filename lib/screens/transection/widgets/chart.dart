import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:wallet/utils/colors.dart';

class ChartScreen extends StatelessWidget {
  ChartScreen({Key? key}) : super(key: key);
  Map<String, double> dataMap = {
    "Bitcoin": 3,
    "Etherum": 2,
    "Ripley": 4,
    "Ruble": 5,
  };
  @override
  Widget build(BuildContext context) {
    return PieChart(
      dataMap: dataMap,
      animationDuration: const Duration(milliseconds: 800),
      chartLegendSpacing: 32,
      chartRadius: MediaQuery.of(context).size.width / 3.2,
      colorList: const [
        CustomColor.yellowColor,
        CustomColor.pinkColor,
        CustomColor.lightBlueColor,
        CustomColor.purpleColor,
      ],
      initialAngleInDegree: 0,
      chartType: ChartType.ring,
      ringStrokeWidth: 20,
      centerText: "Available\nCoins",
      centerTextStyle: const TextStyle(
        color: CustomColor.whiteColor,
      ),
      legendOptions: const LegendOptions(
        showLegendsInRow: false,
        legendPosition: LegendPosition.right,
        showLegends: true,
        legendShape: BoxShape.circle,
        legendTextStyle: TextStyle(
          color: CustomColor.whiteColor,
        ),
      ),
      chartValuesOptions: const ChartValuesOptions(
        showChartValueBackground: false,
        showChartValues: false,
      ),
    );
  }
}
