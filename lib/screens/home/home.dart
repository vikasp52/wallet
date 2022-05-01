import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet/bloc/cubit/transaction_cubit.dart';
import 'package:wallet/repository/transection_repository.dart';
import 'package:wallet/screens/transection/transection.dart';
import 'package:wallet/screens/wallet/wallet.dart';
import 'package:wallet/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 2;

  var pages = [
    const Tabs(tabName: 'Home'),
    const WalletScreen(),
    BlocProvider(
      create: (context) => TransactionCubit(
        transactionRepository: TranscationRepository(),
      ),
      child: const TransectionScreen(),
    ),
    const Tabs(tabName: 'Profile'),
  ];

  List<Icon> icons = const [
    Icon(
      Icons.apps_rounded,
    ),
    Icon(
      Icons.account_balance_wallet_outlined,
    ),
    Icon(
      Icons.watch_later_outlined,
    ),
    Icon(Icons.person),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<BottomNavigationBarItem> bottomNavigationBarItem() {
    return List.generate(
      icons.length,
      (index) => BottomNavigationBarItem(icon: icons[index], label: ''),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.whiteColor,
      body: pages.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          border: Border.all(width: 0),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            backgroundColor: CustomColor.backgroundColor,
            items: bottomNavigationBarItem(),
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            selectedItemColor: CustomColor.blueColor,
            unselectedItemColor: CustomColor.whiteColor,
            iconSize: 30,
            onTap: _onItemTapped,
            elevation: 0.0,
            showSelectedLabels: false,
            showUnselectedLabels: false,
          ),
        ),
      ),
    );
  }
}

class Tabs extends StatelessWidget {
  const Tabs({
    Key? key,
    required this.tabName,
  }) : super(key: key);

  final String tabName;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(tabName),
    );
  }
}
