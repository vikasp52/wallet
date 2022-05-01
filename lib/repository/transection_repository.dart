import 'package:wallet/repository/model/transaction.dart';
import 'dart:convert';

import 'package:flutter/services.dart';

class TranscationRepository {
  Future<List<Transaction>> getTransection() async {
    final response = await rootBundle.loadString('assets/transaction.json');
    final data = await json.decode(response).cast<Map<String, dynamic>>();
    var transactionList =
        data.map<Transaction>((json) => Transaction.fromJson(json)).toList();

    if (transactionList != null || transactionList != []) {
      return transactionList;
    }
    return [];
  }
}
