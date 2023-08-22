import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  const CalcButton(
      {super.key,
      required this.buttonText,
      required this.buttonPressed,
      required this.buttonColor});

  final String buttonText;
  final Color? buttonColor;
  final VoidCallback? buttonPressed;

  @override
  Widget build(BuildContext context) {
    // Expanded is used to make the button fill the available space
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height / 11,
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(0),
        child: ElevatedButton(
          onPressed: buttonPressed,
          style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(17)),
            ),
            backgroundColor: buttonColor,
            elevation: 0,
          ),
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width / 19,
              // ! make the AC button red
              color: buttonText == "AC" ? Colors.red.shade600 : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
