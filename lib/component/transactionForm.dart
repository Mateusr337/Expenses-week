import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  TransactionForm(this.onSubmit, {super.key});

  final titleController = TextEditingController();
  final priceController = TextEditingController();
  final void Function(String, double) onSubmit;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              TextField(
                controller: titleController,
                decoration: const InputDecoration(
                  labelText: 'Titulo',
                ),
              ),
              TextField(
                controller: priceController,
                decoration: const InputDecoration(
                  labelText: 'Preço (R\$) ',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      final title = titleController.text;
                      final value = double.tryParse(priceController.text) ?? 0;
                      onSubmit(title, value);
                    },
                    child: const Text(
                      'Nova transação',
                      style: TextStyle(
                        color: Colors.purple,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
