import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:wallet/repository/model/transaction.dart';
import 'package:wallet/repository/transection_repository.dart';

part 'transaction_state.dart';

class TransactionCubit extends Cubit<TransactionState> {
  TransactionCubit({
    required this.transactionRepository,
  }) : super(LoadingState()) {
    getTransactionsData();
  }

  final TranscationRepository transactionRepository;

  Future<void> getTransactionsData() async {
    try {
      emit(LoadingState());

      final List<Transaction> transactionList =
          await transactionRepository.getTransection();

      if (transactionList.isEmpty) {
        return emit(NoHistoryState('There is nothing to show'));
      }

      emit(LoadedState(transactions: transactionList));
    } catch (e) {
      print('Exception is : ${e.toString()}');
      emit(ErrorState('There is some issue in loading data'));
    }
  }
}
