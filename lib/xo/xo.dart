import 'package:basics_c10_monday/xo/board_btn.dart';
import 'package:basics_c10_monday/xo/players_model.dart';
import 'package:flutter/material.dart';

class XoGame extends StatefulWidget {
  static const String routeName = "XOOO";

  XoGame({super.key});

  @override
  State<XoGame> createState() => _XoGameState();
}

class _XoGameState extends State<XoGame> {
  int score1 = 0;

  int score2 = 0;

  int counter = 1;
  List<String> boardState = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];

  @override
  Widget build(BuildContext context) {
    PlayersModel model =
        ModalRoute.of(context)!.settings.arguments as PlayersModel;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "XO Game",
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      model.player1,
                      style: TextStyle(fontSize: 26),
                    ),
                    Text("$score1", style: TextStyle(fontSize: 22)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      model.player2,
                      style: TextStyle(fontSize: 26),
                    ),
                    Text("$score2", style: TextStyle(fontSize: 22)),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardBtn(
                  label: boardState[0],
                  onClick: onBoardClicked,
                  index: 0,
                ),
                BoardBtn(
                  label: boardState[1],
                  onClick: onBoardClicked,
                  index: 1,
                ),
                BoardBtn(
                  label: boardState[2],
                  onClick: onBoardClicked,
                  index: 2,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardBtn(
                  label: boardState[3],
                  onClick: onBoardClicked,
                  index: 3,
                ),
                BoardBtn(
                  label: boardState[4],
                  onClick: onBoardClicked,
                  index: 4,
                ),
                BoardBtn(
                  label: boardState[5],
                  onClick: onBoardClicked,
                  index: 5,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardBtn(
                  label: boardState[6],
                  onClick: onBoardClicked,
                  index: 6,
                ),
                BoardBtn(
                  label: boardState[7],
                  onClick: onBoardClicked,
                  index: 7,
                ),
                BoardBtn(
                  label: boardState[8],
                  onClick: onBoardClicked,
                  index: 8,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  onBoardClicked(index) {
    if (boardState[index].isNotEmpty) {
      return;
    }
    if (counter.isOdd) {
      boardState[index] = "X";
      score1 += 2;
      bool win = checkWin("X");
      if (win) {
        score1 += 10;
        resetBoard();
      }
    } else {
      boardState[index] = "O";
      score2 += 2;
      bool win = checkWin("O");
      if (win) {
        score2 += 10;
        resetBoard();
      }
    }

    counter++;
    if (counter == 9) {
      resetBoard();
    }
    setState(() {});
  }

  resetBoard() {
    boardState = [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ];
    counter = 0;
  }

  bool checkWin(String symbol) {
    for (int i = 0; i < 9; i += 3) {
      // check Row
      if (symbol == boardState[i] &&
          symbol == boardState[i + 1] &&
          symbol == boardState[i + 2]) {
        return true;
      }
    }

    ///

    for (int i = 0; i < 3; i++) {
      if (symbol == boardState[i] &&
          symbol == boardState[i + 3] &&
          symbol == boardState[i + 6]) {
        return true;
      }
    }

    if (symbol == boardState[0] &&
        symbol == boardState[4] &&
        symbol == boardState[8]) {
      return true;
    }

    if (symbol == boardState[2] &&
        symbol == boardState[4] &&
        symbol == boardState[6]) {
      return true;
    }
    return false;
  }
}
