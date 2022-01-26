

import 'package:calcul/abstract%20class.dart';

class MyCalc extends SimpleCalc{
 String memory = '';
 double a  = double.parse(calculator.memory);
 
  
  
  
  @override
  double divide(double a, double b) {

      double result = a / b;
      return result;

  }

  @override
  double multiply(double a, double b) {
    // TODO: implement multiply
    double result = a * b;
    return result;
  }

  @override
  double substract(double a, double b) {
    // TODO: implement substract
    double result = a - b;
    return result;
  }

  @override
  double sum(double a, double b) {
    // TODO: implement sum
    double result = a + b;
    return result;
  }
  double procent(double a, double b) {
    double result = (a * b)/100;
    return result;
  }

}
