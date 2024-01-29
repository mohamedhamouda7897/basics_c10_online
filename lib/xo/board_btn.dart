import 'package:flutter/material.dart';

class BoardBtn extends StatelessWidget {
  String label;

  Function onClick;
  int index;

  BoardBtn(
      {required this.index,
      required this.label,
      required this.onClick,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue.shade200,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        onPressed: () {
          onClick(index);
        },
        child: Text(
          label,
          style: TextStyle(
            fontSize: 43,
            fontWeight: FontWeight.w100,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
