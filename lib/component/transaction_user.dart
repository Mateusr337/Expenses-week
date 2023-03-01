import 'dart:math';

import 'package:expenses_week/component/transactionForm.dart';
import 'package:expenses_week/component/transactionList.dart';
import 'package:expenses_week/model/transaction.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: ' id',
      title: 'Barbecue',
      value: 10000,
      date: DateTime.now(),
    ),
    Transaction(
      id: ' id',
      title: 'Machine',
      value: 150000,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value.toInt(),
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(_transactions),
        TransactionForm(_addTransaction),
      ],
    );
  }
}
