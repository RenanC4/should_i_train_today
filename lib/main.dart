import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Train today?'),
          backgroundColor: Colors.black,
        ),
        body: TrainPage(),
      ),
    )
  );
}

class TrainPage extends StatefulWidget {
  @override
  _TrainPageState createState() => _TrainPageState();
}
var answers = ["Sim", "Com certeza", "Bora la", "Todo dia é dia", "Claro seu frango"];
final _random = new Random();
var answer = "";

class _TrainPageState extends State<TrainPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50.0),
            child: Image.asset('images/ket.png'),
            width: 100.0,
            height: 100.0,
          ),
          Container(
            margin: const EdgeInsets.only(top: 40.0),
            child: ElevatedButton(
              onPressed: (){
                setState(() {
                  answer =  (answers..shuffle()).first;
                  print(answer);
                });
              },
              child: Text("Devo ir treinar hoje?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 100.0),
            child: Text(answer),
          )
        ]
      ),
    );
  }
}
