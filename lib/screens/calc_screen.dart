import 'package:dart_calc/widgets/calc_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalcScreen extends StatefulWidget {
  const CalcScreen({super.key});

  @override
  State<CalcScreen> createState() => _CalcScreenState();
}

class _CalcScreenState extends State<CalcScreen> {
  Color appColor = const Color(0xff151534);
  Color background = Colors.black54;

  String equation = "0";
  String result = "0";
  String expression = "";
  bool reset = false;
  double equationFontSize = 39.0;
  double resultFontSize = 38.0;

  buttonPressed(String buttonText) {
    // ! checks if the result contains decimal
    String doesContainDecimal(dynamic result) {
      if (result.toString().contains(".")) {
        List<String> splitDecimal = result.toString().split(".");
        if (!(int.parse(splitDecimal[1]) > 0)) {
          return result = splitDecimal[0].toString();
        }
      }
      return result;
    }

    setState(() {
      if (buttonText == "AC") {
        equation = "0";
        result = "0";
      } else if (buttonText == "⌫") {
        equation = equation.substring(0, equation.length - 1);
        if (equation == "") {
          equation = "0";
        }
      } else if (buttonText == "+/-") {
        if (equation[0] != "-") {
          equation = "-$equation";
        } else {
          equation = equation.substring(1);
        }
      } else if (buttonText == "=") {
        expression = equation;
        expression = expression.replaceAll("x", "*");
        expression = expression.replaceAll("÷", "/");
        expression = expression.replaceAll("%", "%");
        reset = true;

        try {
          Parser p = Parser();
          Expression exp = p.parse(expression);

          ContextModel cm = ContextModel();
          result = "${exp.evaluate(EvaluationType.REAL, cm)}";

          if (expression.contains("%")) {
            result = doesContainDecimal(result);
          }
          if (result.endsWith(".0")) {
            result = result.substring(0, result.length - 2);
          }
        } catch (e) {
          result = "Error";
        }
      } else {
        if (equation == "0" || reset == true) {
          equation = buttonText;
          reset = false;
        } else {
          equation = equation + buttonText;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // ! Equation and Result Screen
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              margin: const EdgeInsets.only(left: 5, right: 5),
              padding: const EdgeInsets.only(top: 70, bottom: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ! Equation
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 5,
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.only(right: 10),
                      reverse: true,
                      child: Text(
                        equation,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 10,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  // ! Result
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      result,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 12,
                        // fontSize: resultFontSize,
                        color: result == "Error"
                            ? Colors.red.shade600
                            : Colors.white54,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // ! Divider
            Container(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: const Divider(
                color: Colors.white,
                indent: 15.5,
                endIndent: 17.5,
              ),
            ),
            // ! Buttons
            SizedBox(
              child: Column(
                children: [
                  Row(
                    children: [
                      CalcButton(
                        buttonText: "AC",
                        buttonPressed: () => buttonPressed("AC"),
                        buttonColor: appColor,
                      ),
                      CalcButton(
                        buttonText: "%",
                        buttonPressed: () => buttonPressed("%"),
                        buttonColor: appColor,
                      ),
                      CalcButton(
                        buttonText: "÷",
                        buttonPressed: () => buttonPressed("÷"),
                        buttonColor: appColor,
                      ),
                      CalcButton(
                        buttonText: "⌫",
                        buttonPressed: () => buttonPressed("⌫"),
                        buttonColor: appColor,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CalcButton(
                        buttonText: "7",
                        buttonPressed: () => buttonPressed("7"),
                        buttonColor: appColor,
                      ),
                      CalcButton(
                        buttonText: "8",
                        buttonPressed: () => buttonPressed("8"),
                        buttonColor: appColor,
                      ),
                      CalcButton(
                        buttonText: "9",
                        buttonPressed: () => buttonPressed("9"),
                        buttonColor: appColor,
                      ),
                      CalcButton(
                        buttonText: "x",
                        buttonPressed: () => buttonPressed("x"),
                        buttonColor: appColor,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CalcButton(
                        buttonText: "4",
                        buttonPressed: () => buttonPressed("4"),
                        buttonColor: appColor,
                      ),
                      CalcButton(
                        buttonText: "5",
                        buttonPressed: () => buttonPressed("5"),
                        buttonColor: appColor,
                      ),
                      CalcButton(
                        buttonText: "6",
                        buttonPressed: () => buttonPressed("6"),
                        buttonColor: appColor,
                      ),
                      CalcButton(
                        buttonText: "-",
                        buttonPressed: () => buttonPressed("-"),
                        buttonColor: appColor,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CalcButton(
                        buttonText: "1",
                        buttonPressed: () => buttonPressed("1"),
                        buttonColor: appColor,
                      ),
                      CalcButton(
                        buttonText: "2",
                        buttonPressed: () => buttonPressed("2"),
                        buttonColor: appColor,
                      ),
                      CalcButton(
                        buttonText: "3",
                        buttonPressed: () => buttonPressed("3"),
                        buttonColor: appColor,
                      ),
                      CalcButton(
                        buttonText: "+",
                        buttonPressed: () => buttonPressed("+"),
                        buttonColor: appColor,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CalcButton(
                        buttonText: "+/-",
                        buttonPressed: () => buttonPressed("+/-"),
                        buttonColor: appColor,
                      ),
                      CalcButton(
                        buttonText: "0",
                        buttonPressed: () => buttonPressed("0"),
                        buttonColor: appColor,
                      ),
                      CalcButton(
                        buttonText: ".",
                        buttonPressed: () => buttonPressed("."),
                        buttonColor: appColor,
                      ),
                      CalcButton(
                        buttonText: "=",
                        buttonPressed: () => buttonPressed("="),
                        buttonColor: Colors.orange.shade800,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
