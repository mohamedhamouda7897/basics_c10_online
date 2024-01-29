import 'package:basics_c10_monday/basics/card_model.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  CardModel cardModel;
  CardItem({required this.cardModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      color: Colors.redAccent,
      margin: EdgeInsets.all(4),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                cardModel.path,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 8, right: 8),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
              color: Color.fromRGBO(155, 59, 212, 100),
              child: Text(
                cardModel.title,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
