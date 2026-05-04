//import 'package:calculator_app/constant/colors.dart';
import 'package:calculator_app/provider/cal_provider.dart';
import 'package:calculator_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:calculator_app/widgets/textfield.dart';

void main() {
  runApp(const CalculatorAPP());
}

class CalculatorAPP extends StatelessWidget {
  const CalculatorAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculatorProvider(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen()),
    );
  }
}
