import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet/bloc/cubit/transaction_cubit.dart';
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
      body: BlocBuilder<TransactionCubit, TransactionState>(
        builder: (context, state) {
          if (state is LoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ErrorState) {
            return Center(
              child: Text(state.errorMessage),
            );
          } else if (state is LoadedState) {
            return Column(
              children: [
                const AppBarWidget(
                  title: 'MY TRANSACTIONS',
                ),
                ChartScreen(),
                const SizedBox(
                  height: 20,
                ),
                MyTransections(
                  transactions: state.transactions,
                ),
              ],
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
