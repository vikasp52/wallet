part of 'transaction_cubit.dart';

@immutable
abstract class TransactionState {}

class LoadingState extends TransactionState {}

class LoadedState extends TransactionState {
  LoadedState({
    required this.transactions,
  });

  final List<Transaction> transactions;
}

class NoHistoryState extends TransactionState {
  NoHistoryState(this.errorMessage);

  final String errorMessage;
}

class ErrorState extends TransactionState {
  ErrorState(this.errorMessage);

  final String errorMessage;
}
