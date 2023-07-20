import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  const CalcButton(
      {super.key,
      required this.buttonText,
      required this.buttonPressed,
      required this.buttonColor});

  final String buttonText;
  final Color buttonColor;
  final VoidCallback buttonPressed;

  @override
  Widget build(BuildContext context) {
    // Color appColor = const Color(0xff151534);
    return Container(
      width: 80,
      height: buttonText == "=" ? 150 : 70,
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(0),
      child: ElevatedButton(
        onPressed: buttonPressed,
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          backgroundColor: buttonColor,
          elevation: 0,
        ),
        child: Text(
          buttonText,
          style: const TextStyle(
            // fontSize: MediaQuery.of(context).size.width / 8,
            fontSize: 27,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
