import 'package:flutter/material.dart';
import 'package:wallet/repository/model/transaction.dart';
import 'package:wallet/utils/colors.dart';
import 'package:wallet/widgets/card_title.dart';

class MyTransections extends StatelessWidget {
  const MyTransections({
    Key? key,
    required this.transactions,
  }) : super(key: key);

  final List<Transaction> transactions;

  Color transactionType(String transactionType) {
    if (transactionType == 'Sent') {
      return Colors.red;
    }
    return Colors.green;
  }

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
                  itemCount: transactions.length,
                  itemBuilder: (context, index) {
                    final transaction = transactions[index];
                    return ListTile(
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
                        children: [
                          Text(
                            transaction.date,
                          ),
                          Text(
                            transaction.transectionType,
                            style: TextStyle(
                              color: transactionType(
                                transaction.transectionType,
                              ),
                            ),
                          ),
                        ],
                      ),
                      title: Text(transaction.currency,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                      subtitle:
                          Text('${transaction.price} ${transaction.shortName}'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
