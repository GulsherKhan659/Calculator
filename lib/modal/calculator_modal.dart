class Calculator {
  final double firstNumber;
  final double secondNumber;
  Calculator({required this.firstNumber, required this.secondNumber});
  double addition() {
    return this.firstNumber + this.secondNumber;
  }

  double substraction() {
    return this.firstNumber - this.secondNumber;
  }

  double multiplication() {
    return this.firstNumber * this.secondNumber;
  }

  double division() {
    return this.firstNumber / this.secondNumber;
  }

  double module() {
    return this.firstNumber % this.secondNumber;
  }
}
