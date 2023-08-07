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
    // Color appColor = const Color(0xff151534);

    return Expanded(
      // width: 90,
      // height: buttonText == "=" ? 150 : 30,
      // margin: const EdgeInsets.all(4),
      // padding: const EdgeInsets.all(0),
      child: Container(
        // width: 90,
        // height:
        //     buttonText == "=" ? 150 : MediaQuery.of(context).size.height / 10,
        height: MediaQuery.of(context).size.height / 10,
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
              fontSize: MediaQuery.of(context).size.width / 15,
              // fontSize: 27,
              color: buttonText == "AC"
                  ? Colors.red
                  // : buttonText == "="
                  //     ? Colors.orange
                  : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

// Widget CalcButton(
//     // String buttonText,
//     // Color buttonColor,
//     // void Function()? buttonPressed,
//     {
//   required String buttonText,
//   required Color buttonColor,
//   required void Function()? buttonPressed,
// }) {
//   return Container(
//     width: 90,
//     height: buttonText == "=" ? 150 : 30,
//     margin: const EdgeInsets.all(4),
//     padding: const EdgeInsets.all(0),
//     child: ElevatedButton(
//       onPressed: buttonPressed,
//       style: ElevatedButton.styleFrom(
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(17)),
//         ),
//         backgroundColor: buttonColor,
//         elevation: 0,
//       ),
//       child: Text(
//         buttonText,
//         style: TextStyle(
//           fontSize: MediaQuery.of(context as BuildContext).size.width / 15,
//           // fontSize: 27,
//           color: buttonText == "AC"
//               ? Colors.red
//               // : buttonText == "="
//               //     ? Colors.orange
//               : Colors.white,
//         ),
//       ),
//     ),
//   );
// }
