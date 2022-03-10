// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import './user_transaction.dart';

class HomeScreen extends StatelessWidget {
  //late String titleInput;
  //late String amountInput;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 117, 178, 206),
        appBar: AppBar(title: Text('Expense Tracker')),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //Chart container
              Container(
                width: double.infinity,
                height: 100,
                child: Card(
                  child: Text('CHART!!'),
                  elevation: 5,
                ),
              ),
              UserTransaction(),
            ],
          ),
        ),
      ),
    );
  }
}
