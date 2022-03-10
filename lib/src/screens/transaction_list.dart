// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import '../model/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Container(
                    width: double.infinity,
                    height: 50,
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      transactions[index].title,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                      ),
                    )),
                Container(
                  height: 40,
                  alignment: Alignment.bottomLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text.rich(TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: 'Rs. ',
                            style: TextStyle(
                                color: Colors.purple,
                                fontStyle: FontStyle.italic)),
                        TextSpan(
                            text: transactions[index].amount.toStringAsFixed(2),
                            style: TextStyle(
                                color: Colors.purple,
                                fontSize: 22,
                                fontWeight: FontWeight.bold))
                      ])),
                      Text(
                          DateFormat('yyyy/MM/dd')
                              .format(transactions[index].date),
                          style: TextStyle(color: Colors.purple))
                    ],
                  ),
                ),
                //SizedBox(height: 25),
              ],
            ),
          );
        },
      ),
    );
  }
}
