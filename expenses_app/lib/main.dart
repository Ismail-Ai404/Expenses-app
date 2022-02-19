import 'package:first_app/widgets/new_transactions.dart';
import 'package:first_app/widgets/transaction_list.dart';
import 'package:first_app/widgets/user_transaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final tittleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter App',
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              color: Colors.blue[200],
              child: Container(
                child: Text(
                  'Hello',
                  textScaleFactor: 3,
                ),
                width: double.infinity,
              ),
              elevation: 5,
            ),
            UserTransactions(),
            // Container(
            //   width: 120,
            //   child: Card(
            //     elevation: 5,
            //     color: Colors.red[300],
            //     child: Text(
            //       'Another one!',
            //       textScaleFactor: 2,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
