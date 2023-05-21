import 'package:math_expressions/math_expressions.dart';

class CalculatorFunctions {
  //define expression and result variable
  String expression = "";
  String result = "";

  //create a function that help handle
  // whatever button is clicked and evaluate the expression
  void performButtonAction(String buttonText) {
    if (buttonText == "C") {
      expression = "";
      result = "";
    } else if (buttonText == "del") {
      expression = expression.substring(0, expression.length - 1);
    } else if (buttonText == "=") {
      try {
        Parser parser = Parser();
        Expression exp = parser.parse(expression);
        ContextModel context = ContextModel();
        final evaluatedExpression = exp.evaluate(
          EvaluationType.REAL,
          context,
        );
        result = evaluatedExpression;
      } catch (e) {
        result = 'Error $e';
      }
    } else {
      expression += buttonText;
    }
  }

  //create a function that determine
  //if a number is an integer or not
  bool isInteger(num value) => value is int || value == value.roundToDouble();
}
