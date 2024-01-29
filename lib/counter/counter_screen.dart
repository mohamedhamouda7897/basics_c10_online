import 'package:flutter/material.dart';

// Stateless
// StateFull

class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int num = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          num++;
          setState(() {});
        },
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
        backgroundColor: Colors.red,
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Counter"),
      ),
      body: Center(
        child: Text(
          "$num",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
