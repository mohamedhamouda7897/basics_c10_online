import 'package:basics_c10_monday/calculator/calc_btn.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String displayResult = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: const Text("Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              width: double.infinity,
              child:  Text(
                displayResult,
                style: const TextStyle(fontWeight: FontWeight.w200, fontSize: 35),
              ),
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalcBtn(
                  label: "9",
                  onClick: onBtnClicked,
                ),
                CalcBtn(
                  label: "8",
                  onClick: onBtnClicked,
                ),
                CalcBtn(
                  label: "7",
                  onClick: onBtnClicked,
                ),
                CalcBtn(
                  label: "/",
                  onClick: onOperatorClicked,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalcBtn(
                  label: "6",
                  onClick: onBtnClicked,
                ),
                CalcBtn(
                  label: "5",
                  onClick: onBtnClicked,
                ),
                CalcBtn(
                  label: "4",
                  onClick: onBtnClicked,
                ),
                CalcBtn(
                  label: "*",
                  onClick: onOperatorClicked,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalcBtn(
                  label: "3",
                  onClick: onBtnClicked,
                ),
                CalcBtn(
                  label: "2",
                  onClick: onBtnClicked,
                ),
                CalcBtn(
                  label: "1",
                  onClick: (l) {
                    displayResult += "1";
                  },
                ),
                CalcBtn(
                  label: "-",
                  onClick: onOperatorClicked,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalcBtn(
                  label: "0",
                  onClick: onBtnClicked,
                ),
                CalcBtn(
                  label: ".",
                  onClick: onBtnClicked,
                ),
                CalcBtn(
                  label: "=",
                  onClick: onEqualClicked,
                ),
                CalcBtn(
                  label: "+",
                  onClick: onOperatorClicked,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  onBtnClicked(number) {
    if (op.isEmpty) {
      displayResult = "";
    }
    displayResult += number;
    setState(() {});
  }

  String lhs = "";
  String rhs = "";
  String op = "";

// lhs (op) rhs = result
  onEqualClicked(equalOperator) {
    String finalResult = calculateResult(lhs, op, displayResult);
    displayResult = finalResult;

    lhs = "";
    op = "";
    setState(() {});
  }

  // lhs = 55
  // op  = +

  // << 5 =>>   displayRes

  String calculateResult(String lhs, String op, String rhs) {
    double LHS = double.parse(lhs);
    double RHS = double.parse(rhs);

    if (op == "+") {
      double res = LHS + RHS;
      return res.toString();
    } else if (op == "-") {
      double res = LHS - RHS;
      return res.toString();
    } else if (op == "*") {
      double res = LHS * RHS;
      return res.toString();
    } else if (op == "/") {
      double res = LHS / RHS;
      return res.toString();
    } else {
      return "";
    }
  }

  onOperatorClicked(operation) {
    if (lhs.isEmpty) {
      lhs = displayResult; //
    } else {
      lhs = calculateResult(lhs, op, displayResult);
    }
    op = operation;
    displayResult = "";
    setState(() {});
  }
}
