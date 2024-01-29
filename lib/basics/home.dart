import 'package:basics_c10_monday/basics/card_item.dart';
import 'package:flutter/material.dart';

import 'card_model.dart';

class HomeScreen extends StatelessWidget {
  // Column , Row , Stack

  HomeScreen() {
    createDamuyData();
  }

  List<CardModel> cards = [];

  createDamuyData() {
    for (int i = 0; i < 200000; i++) {
      cards.add(CardModel(title: "Cars $i", path: "assets/images/1.jpg"));
      cards.add(CardModel(title: "Sports $i", path: "assets/images/3.jpg"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25))),
          titleSpacing: 0,
          leadingWidth: 80,
          backgroundColor: Colors.blue,
          title: Text("Route"),
          centerTitle: false,
          leading: Icon(
            Icons.accessible_forward,
            color: Colors.red,
            size: 35,
          ),
          actions: [
            Icon(Icons.search),
            Icon(Icons.settings),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: cards.map(drawCardItem).toList(),
          ),
        ));
  }

  Widget drawCardItem(cardModel) {
    return CardItem(cardModel: cardModel);
  }
}
