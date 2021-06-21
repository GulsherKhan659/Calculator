import 'package:calulator_app/modal/calculator_modal.dart';
import 'package:flutter/widgets.dart';

class CalculatorProvider with ChangeNotifier {
  String _number = "";
  String sign = "";
  String firstNumber = "";
  String secondNumber = "";

  void numberGet(String number) {
    if (number == 'C' || number == 'E') {
      this._number = "";
      this.sign = "";
      this.firstNumber = "";
      this.secondNumber = "";
      notifyListeners();
    } else {
      if (number == '=') {
        secondNumber = this._number;
        Calculator _calculator = Calculator(
            firstNumber: double.parse(firstNumber),
            secondNumber: double.parse(secondNumber));
        switch (sign) {
          case "+":
            this._number = _calculator.addition().toString();
            break;
          case "-":
            this._number = _calculator.substraction().toString();
            break;
          case "/":
            this._number = _calculator.division().toString();
            break;
          case "x":
            this._number = _calculator.multiplication().toString();
            break;
          case "%":
            this._number = _calculator.module().toString();
            break;
        }
        notifyListeners();
        // this._number = "";
      } else {
        if (number == '+' ||
            number == '-' ||
            number == '/' ||
            number == 'x' ||
            number == '%') {
          sign = "";
          firstNumber = "";
          secondNumber = "";
          firstNumber = this._number;
          sign = number;
          this._number = "";
          notifyListeners();
        } else {
          this._number = this._number + number;
          notifyListeners();
        }
      }
    }
  }

  String get number => _number;
}
