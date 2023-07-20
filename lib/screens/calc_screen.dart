import 'package:dart_calc/widgets/calc_button.dart';
import 'package:flutter/material.dart';

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
  double equationFontSize = 38.0;
  double resultFontSize = 48.0;

  buttonPressed(String buttonText) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      // appBar: AppBar(
      //   // elevation: 0,
      //   // backgroundColor: Colors.black54,
      //   backgroundColor: appColor,
      //   // leading: const Icon(Icons.settings, color: Colors.orange),
      //   // actions: const [
      //   //   Padding(
      //   //     padding: EdgeInsets.only(top: 18.0),
      //   //     child: Text('DEG', style: TextStyle(color: Colors.white38)),
      //   //   ),
      //   // SizedBox(width: 20),
      //   // ],
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: MediaQuery.of(context).size.width,
              // height: 250,
              height: MediaQuery.of(context).size.height / 2.7,
              margin: const EdgeInsets.all(4),
              padding: const EdgeInsets.only(top: 50, bottom: 10),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: appColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "1 + 2 + 3 + 4 + 5 + 6 + 7",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        // fontSize: MediaQuery.of(context).size.width / 8,
                        fontSize: equationFontSize,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      const Divider(),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          result,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            // fontSize: MediaQuery.of(context).size.width / 8,
                            fontSize: resultFontSize,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalcButton(
                buttonText: "AC",
                buttonPressed: () {},
                buttonColor: appColor,
              ),
              CalcButton(
                buttonText: "%",
                buttonPressed: () {},
                buttonColor: appColor,
              ),
              CalcButton(
                buttonText: "/",
                buttonPressed: () {},
                buttonColor: appColor,
              ),
              CalcButton(
                buttonText: "x",
                buttonPressed: () {},
                buttonColor: appColor,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalcButton(
                buttonText: "7",
                buttonPressed: () {},
                buttonColor: appColor,
              ),
              CalcButton(
                buttonText: "8",
                buttonPressed: () {},
                buttonColor: appColor,
              ),
              CalcButton(
                buttonText: "9",
                buttonPressed: () {},
                buttonColor: appColor,
              ),
              CalcButton(
                buttonText: "-",
                buttonPressed: () {},
                buttonColor: appColor,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalcButton(
                buttonText: "4",
                buttonPressed: () {},
                buttonColor: appColor,
              ),
              CalcButton(
                buttonText: "5",
                buttonPressed: () {},
                buttonColor: appColor,
              ),
              CalcButton(
                buttonText: "6",
                buttonPressed: () {},
                buttonColor: appColor,
              ),
              CalcButton(
                buttonText: "+",
                buttonPressed: () {},
                buttonColor: appColor,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CalcButton(
                        buttonText: "1",
                        buttonPressed: () {},
                        buttonColor: appColor,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.025,
                      ),
                      CalcButton(
                        buttonText: "2",
                        buttonPressed: () {},
                        buttonColor: appColor,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      CalcButton(
                        buttonText: "3",
                        buttonPressed: () {},
                        buttonColor: appColor,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CalcButton(
                        buttonText: "+/-",
                        buttonPressed: () {},
                        buttonColor: appColor,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.025,
                      ),
                      CalcButton(
                        buttonText: "0",
                        buttonPressed: () {},
                        buttonColor: appColor,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      CalcButton(
                        buttonText: ".",
                        buttonPressed: () {},
                        buttonColor: appColor,
                      ),
                    ],
                  ),
                ],
              ),
              CalcButton(
                buttonText: "=",
                buttonPressed: () {},
                buttonColor: appColor,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
