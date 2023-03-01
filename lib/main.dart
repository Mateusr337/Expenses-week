import 'package:expenses_week/component/transactionForm.dart';
import 'package:expenses_week/component/transactionList.dart';
import 'package:expenses_week/component/transaction_user.dart';
import 'package:expenses_week/model/transaction.dart';
import 'package:flutter/material.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses Week'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const <Widget>[
          Card(
            color: Colors.blue,
            elevation: 5,
            child: Text("Grafics"),
          ),
          TransactionUser()
        ],
      ),
    );
  }
}
