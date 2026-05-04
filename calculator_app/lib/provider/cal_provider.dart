import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier {
  final comController = TextEditingController();
  setvalue(String value) {
    String str = comController.text;
    switch (value) {
      case "C":
        comController.clear();
        break;
      case "AC":
        comController.text = str.substring(0, str.length - 1);
        break;
      case "X":
        comController.text += "*";
        break;
      case "=":
        compute();
        break;
      default:
        comController.text += value;
    }
    comController.selection = TextSelection.fromPosition(
      TextPosition(offset: comController.text.length),
    );
  }

  compute() {
    String text = comController.text;
    comController.text = text.interpret().toString();
  }

  @override
  void dispose() {
    super.dispose();
    comController.dispose();
  }
}
