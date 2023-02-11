import 'package:flutter/material.dart';
import 'Models/transaction.dart';
import 'Models/new_transaction.dart';
import 'Models/transactions_list.dart';

class user_transactin extends StatefulWidget {
  @override
  State<user_transactin> createState() => _user_transactinState();
}

class _user_transactinState extends State<user_transactin> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 7.34,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 8.99,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String Title, double Amount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      date: DateTime.now(),
      title: Title,
      amount: Amount,
    );
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        Transactionlist(_userTransactions),
      ],
    );
  }
}
