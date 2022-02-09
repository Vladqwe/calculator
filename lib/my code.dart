

import 'package:calcul/abstract%20class.dart';

class CalculatorUi extends SimpleCalc{
 String input = '';
 double firstValue = 0;
 String secondValue = '';
 String operator = '';

 /*void onPressed(value){
   switch (value){
     case 'AC':
     case '+':
     case '-':
     case '/':
     case '*':
     case '=':
     default:
       if (isNumber(value)){
         if (operator != '+' || operator !='-' || operator != '*' || operator != '/' ){
           setState(() => input = calculator.input + value);
            double firstValue = firstValue.parse(input);
            else {
           setState(() => input = calculator.input + value);
           secondValue = input;
         }


         }
       }
   }
 }






 
  
  
  */
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
