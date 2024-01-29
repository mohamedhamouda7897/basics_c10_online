import 'package:flutter/material.dart';

// call back function
class CalcBtn extends StatelessWidget {
  String label;
  Function onClick;

  CalcBtn({required this.label, required this.onClick, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
            onPressed: () {
              onClick(label);

            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
            child: Text(
              label,
              style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )));
  }
}
