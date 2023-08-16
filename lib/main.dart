import 'package:dart_calc/screens/calc_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(const MyApp()));
  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DartCalc',
      // darkTheme: ThemeData.dark(useMaterial3: true),
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff151534)),
        useMaterial3: true,
      ),
      home: const CalcScreen(),
    );
  }
}
