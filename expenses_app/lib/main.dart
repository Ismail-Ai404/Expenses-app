import 'package:flutter/material.dart';

import './transaction.dart';

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
  final List<Transaction> transaction = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Buy milk',
      amount: 59.99,
      date: DateTime.now(),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter App',
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          Container(
            width: 120,
            child: Card(
              elevation: 5,
              color: Colors.red[300],
              child: Text(
                'Another one!',
                textScaleFactor: 2,
              ),
            ),
          ),
          Column(
            children: transaction
                .map((tx) => Card(
                      elevation: 5,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(10),
                            child: Text(
                              tx.amount.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.purple[700],
                                //backgroundColor: Colors.amber,
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.purple[700],
                                width: 2,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                tx.title,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                tx.date.toString(),
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
