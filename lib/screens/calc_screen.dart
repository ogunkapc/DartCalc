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

  // String equation = "0";
  String equation = "1 + 2 + " * 4;
  String result = "0";
  String expression = "";
  double equationFontSize = 38.0;
  double resultFontSize = 48.0;

  buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "AC") {
        // equation = "0";
        // result = "0";
        print("AC pressed");
      } else if (buttonText == "⌫") {
        print("Delete pressed");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // List? buttons;
    return Scaffold(
      backgroundColor: background,
      // appBar: AppBar(
      // elevation: 0,
      // backgroundColor: Colors.black54,
      //   backgroundColor: appColor,
      // leading: const Icon(Icons.settings, color: Colors.orange),
      // actions: const [
      //   Padding(
      //     padding: EdgeInsets.only(top: 18.0),
      //     child: Text('DEG', style: TextStyle(color: Colors.white38)),
      //   ),
      // SizedBox(width: 20),
      // ],
      // ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              // height: 250,
              height: MediaQuery.of(context).size.height / 4,
              margin: const EdgeInsets.only(left: 4, right: 4),
              padding: const EdgeInsets.only(top: 25, bottom: 5),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: appColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(
                        // top: (MediaQuery.of(context).size.height / 35),
                        bottom: 10,
                        right: 10),
                    child: Text(
                      equation,
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
            // Container(
            //   height: MediaQuery.of(context).size.height * 0.05,
            //   width: MediaQuery.of(context).size.width,
            //   padding: const EdgeInsets.all(2.5),
            //   margin: const EdgeInsets.only(bottom: 10),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       IconButton(
            //         onPressed: () {},
            //         icon: const Icon(Icons.history_outlined),
            //       ),
            //       IconButton(
            //         onPressed: () {},
            //         icon: const Icon(Icons.backspace_outlined),
            //       ),
            //     ],
            //   ),
            // ),
            const Divider(),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      CalcButton(
                        buttonText: "AC",
                        buttonPressed: () => buttonPressed("buttonText"),
                        buttonColor: appColor,
                      ),
                      CalcButton(
                        buttonText: "%",
                        buttonPressed: () => buttonPressed("%"),
                        buttonColor: appColor,
                      ),
                      CalcButton(
                        buttonText: "/",
                        buttonPressed: () => buttonPressed("/"),
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
                        buttonColor: Colors.orange,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // SizedBox(
            //   width: MediaQuery.of(context).size.width,
            //   height: MediaQuery.of(context).size.height * 0.5652,
            //   child: GridView.count(
            //     crossAxisCount: buttons!.length ~/ 4,
            //     crossAxisSpacing: 1,
            //     mainAxisSpacing: 0,
            //     shrinkWrap: true,
            //     physics: const NeverScrollableScrollPhysics(),
            //     children: List.generate(
            //       buttons.length,
            //       (index) => Container(child: buttons[index]),
            //     ),
            //   ),
            // ),
            // GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), itemBuilder: (BuildContext context, int index) => List.generate(buttons.length, (index) => buttons[index],),)
            //   SizedBox(
            //     width: MediaQuery.of(context).size.width,
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //       children: [
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //           children: [
            //             CalcButton(
            //               buttonText: "AC",
            //               buttonPressed: () {},
            //               buttonColor: appColor,
            //             ),
            //             CalcButton(
            //               buttonText: "%",
            //               buttonPressed: () {},
            //               buttonColor: appColor,
            //             ),
            //             CalcButton(
            //               buttonText: "/",
            //               buttonPressed: () {},
            //               buttonColor: appColor,
            //             ),
            //             CalcButton(
            //               buttonText: "x",
            //               buttonPressed: () {},
            //               buttonColor: appColor,
            //             ),
            //           ],
            //         ),
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //           children: [
            //             CalcButton(
            //               buttonText: "7",
            //               buttonPressed: () {},
            //               buttonColor: appColor,
            //             ),
            //             CalcButton(
            //               buttonText: "8",
            //               buttonPressed: () {},
            //               buttonColor: appColor,
            //             ),
            //             CalcButton(
            //               buttonText: "9",
            //               buttonPressed: () {},
            //               buttonColor: appColor,
            //             ),
            //             CalcButton(
            //               buttonText: "-",
            //               buttonPressed: () {},
            //               buttonColor: appColor,
            //             ),
            //           ],
            //         ),
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //           children: [
            //             CalcButton(
            //               buttonText: "4",
            //               buttonPressed: () {},
            //               buttonColor: appColor,
            //             ),
            //             CalcButton(
            //               buttonText: "5",
            //               buttonPressed: () {},
            //               buttonColor: appColor,
            //             ),
            //             CalcButton(
            //               buttonText: "6",
            //               buttonPressed: () {},
            //               buttonColor: appColor,
            //             ),
            //             CalcButton(
            //               buttonText: "+",
            //               buttonPressed: () {},
            //               buttonColor: appColor,
            //             ),
            //           ],
            //         ),
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //           children: [
            //             Column(
            //               children: [
            //                 Row(
            //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //                   children: [
            //                     CalcButton(
            //                       buttonText: "1",
            //                       buttonPressed: () {},
            //                       buttonColor: appColor,
            //                     ),
            //                     // SizedBox(
            //                     //   width: MediaQuery.of(context).size.width * 0.025,
            //                     // ),
            //                     CalcButton(
            //                       buttonText: "2",
            //                       buttonPressed: () {},
            //                       buttonColor: appColor,
            //                     ),
            //                     // SizedBox(
            //                     //   width: MediaQuery.of(context).size.width * 0.02,
            //                     // ),
            //                     CalcButton(
            //                       buttonText: "3",
            //                       buttonPressed: () {},
            //                       buttonColor: appColor,
            //                     ),
            //                   ],
            //                 ),
            //                 Row(
            //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //                   children: [
            //                     CalcButton(
            //                       buttonText: "+/-",
            //                       buttonPressed: () {},
            //                       buttonColor: appColor,
            //                     ),
            //                     // SizedBox(
            //                     //   width: MediaQuery.of(context).size.width * 0.025,
            //                     // ),
            //                     CalcButton(
            //                       buttonText: "0",
            //                       buttonPressed: () {},
            //                       buttonColor: appColor,
            //                     ),
            //                     // SizedBox(
            //                     //   width: MediaQuery.of(context).size.width * 0.02,
            //                     // ),
            //                     CalcButton(
            //                       buttonText: ".",
            //                       buttonPressed: () {},
            //                       buttonColor: appColor,
            //                     ),
            //                   ],
            //                 ),
            //               ],
            //             ),
            //             CalcButton(
            //               buttonText: "=",
            //               buttonPressed: () {},
            //               buttonColor: appColor,
            //             ),
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            //   const SizedBox(
            //     height: 10,
            //   ),
          ],
        ),
      ),
    );
  }
}
