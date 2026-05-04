import 'package:calculator_app/constant/colors.dart';
import 'package:calculator_app/provider/cal_provider.dart';
import 'package:calculator_app/widgets/button.dart';
import 'package:calculator_app/widgets/cal_button.dart';
import 'package:flutter/material.dart';
import 'package:calculator_app/widgets/textfield.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CalculatorProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Center(
              child: Text(
                "Calculator App",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          body: Column(
            children: [
              CustomTextField(controller: provider.comController),
              Spacer(),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.6,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: buttonlist,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: buttonlist1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: buttonlist2,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: buttonlist3,
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: buttonlist4,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        CalculateButton(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

List<Widget> buttonlist = [
  Button1(label: "C", textColor: Colors.blue),
  Button1(label: "/", textColor: Colors.blue),
  Button1(label: "X", textColor: Colors.blue),
  Button1(label: "AC", textColor: Colors.blue),
];
List<Widget> buttonlist1 = [
  Button1(label: "7"),
  Button1(label: "8"),
  Button1(label: "9"),
  Button1(label: "-", textColor: Colors.blue),
];
List<Widget> buttonlist2 = [
  Button1(label: "4"),
  Button1(label: "5"),
  Button1(label: "6"),
  Button1(label: "+", textColor: Colors.blue),
];
List<Widget> buttonlist3 = [
  Button1(label: "1"),
  Button1(label: "2"),
  Button1(label: "3"),
];
List<Widget> buttonlist4 = [
  Button1(label: "%"),
  Button1(label: "0"),
  Button1(label: "."),
];
