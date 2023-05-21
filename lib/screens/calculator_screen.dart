import 'package:calculatorapp/utils/y_margin.dart';
import 'package:flutter/material.dart';

import '../utils/calculator_functions.dart';
import '../widgets/custom_button.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    final CalculatorFunctions calculatorFunctions = CalculatorFunctions();
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.end, //the app start form the botom to the top
            crossAxisAlignment:
                CrossAxisAlignment.end, //it will adjut to the right
            children: [
              Text(
                calculatorFunctions.expression,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
              const YMargin(20),
              Text(
                calculatorFunctions.result,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              const YMargin(20),
              //first row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    buttonText: 'AC',
                    buttonColor: Colors.grey,
                    onPressed: () {},
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: 'del',
                    buttonColor: Colors.grey,
                    onPressed: () {},
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '%',
                    buttonColor: Colors.grey,
                    onPressed: () {},
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '÷',
                    buttonColor: Colors.orange,
                    onPressed: () {},
                    textColor: Colors.white,
                  ),
                ],
              ),
              const YMargin(20),
              //second row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    buttonText: '7',
                    buttonColor: Colors.white30,
                    onPressed: () {
                      calculatorFunctions.performButtonAction('7');
                      setState(() {});
                    },
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '8',
                    buttonColor: Colors.white30,
                    onPressed: () {},
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '9',
                    buttonColor: Colors.white30,
                    onPressed: () {},
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '*',
                    buttonColor: Colors.orange,
                    onPressed: () {},
                    textColor: Colors.white,
                  ),
                ],
              ),
              const YMargin(20),
              //third row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    buttonText: '4',
                    buttonColor: Colors.white30,
                    onPressed: () {},
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '5',
                    buttonColor: Colors.white30,
                    onPressed: () {},
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '6',
                    buttonColor: Colors.white30,
                    onPressed: () {},
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '-',
                    buttonColor: Colors.orange,
                    onPressed: () {},
                    textColor: Colors.white,
                  ),
                ],
              ),
              const YMargin(20),
              //fourth row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    buttonText: '1',
                    buttonColor: Colors.white30,
                    onPressed: () {},
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '2',
                    buttonColor: Colors.white30,
                    onPressed: () {},
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '3',
                    buttonColor: Colors.white30,
                    onPressed: () {},
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '+',
                    buttonColor: Colors.orange,
                    onPressed: () {},
                    textColor: Colors.white,
                  ),
                ],
              ),
              const YMargin(20),
              //fifth row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    buttonText: '0',
                    buttonColor: Colors.white30,
                    onPressed: () {},
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '.',
                    buttonColor: Colors.white30,
                    onPressed: () {},
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '00',
                    buttonColor: Colors.white30,
                    onPressed: () {},
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    buttonText: '=',
                    buttonColor: Colors.orange,
                    onPressed: () {},
                    textColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
