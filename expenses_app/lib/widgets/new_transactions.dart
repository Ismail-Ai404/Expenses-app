import 'package:flutter/material.dart';

class NewTransactions extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTx;

  NewTransactions(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          TextField(
            autofocus: true,
            decoration: InputDecoration(labelText: 'Title'),
            controller: titleController,
          ),
          TextField(
            cursorColor: Colors.deepOrange,
            decoration: InputDecoration(
              labelText: 'Amount',
            ),
            controller: amountController,
          ),
          Card(
            elevation: 3,
            child: TextButton(
                onPressed: () {
                  addTx(
                    titleController.text,
                    double.parse(amountController.text),
                  );
                },
                child: Text(
                  'Add Transaction',
                  style: TextStyle(color: Colors.grey[600]),
                )),
          )
        ]),
      ),
    );
  }
}
