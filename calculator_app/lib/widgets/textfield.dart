//import 'package:calculator_app/main.dart';
import 'package:flutter/material.dart';
//import 'package:calculator_app/constant/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(10),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          fillColor: Colors.white,
          filled: true,
        ),
        style: TextStyle(fontSize: 45),
        readOnly: true,
        autofocus: true,
        showCursor: true,
      ),
    );
  }
}
