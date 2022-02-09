import 'package:flutter/material.dart';
import 'package:calcul/button.dart';

import 'package:calcul/my code.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Calculator',

      home: CalculatorUi(),
    );
  }
}

class CalculatorUi extends StatefulWidget {
  const CalculatorUi({Key? key}) : super(key: key);

  @override
  CalculatorUiState createState() => CalculatorUiState();
}

class CalculatorUiState extends State<CalculatorUi> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('calculator'),
          centerTitle: true,
        ),
       body: Container(
         color: Colors.black,

         child: Column(
         children: [


           Expanded(
             flex: 3,
             child: _Display(

             ),

           ),

         Expanded(
         flex: 8,
           child: Container(
              child: _ButtonWidget(),
           ),
         )
         ])

       ),





           );



}
  }

 class _Display extends StatelessWidget {
   const _Display({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context){
     return Row(
       crossAxisAlignment: CrossAxisAlignment.end,
       mainAxisAlignment: MainAxisAlignment.end,


       children: [Text('0',
       style: TextStyle(color: Colors.white, fontSize: 50))],


     );


   }

 }
class _ButtonWidget extends StatelessWidget {
  final List<String> buttons = [
    'AC',
    '+/-',
    '%',
    '/',
    '7',
    '8',
    '9',
    '+',
    '4',
    '5',
    '6',
    'x',
    '1',
    '2',
    '3',
    '-',
    '0',
    '.',
    '=',

  ];
   _ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: buttons.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4),
    itemBuilder: (BuildContext context, int index) {
      // Clear Button
      if (index == 0) {
        return MyButton(

          buttonText: buttons[index],
          color: Colors.grey,
          textColor: Colors.black,
        );
      }

      // +/- button
      else if (index == 1) {
        return MyButton(
          buttonText: buttons[index],
          color: Colors.grey,
          textColor: Colors.black,
        );
      }
      // % Button
      else if (index == 2) {
        return MyButton(

          buttonText: buttons[index],
          color: Colors.grey,
          textColor: Colors.black,
        );
      }


      // Equal_to Button
      else if (index == 18 || index == 3 || index == 7 || index == 11 || index == 15) {
        return MyButton(

          buttonText: buttons[index],
          color: Colors.orange[700],
          textColor: Colors.white,
        );
      }

      //  other buttons
      else {
        return MyButton(

          buttonText: buttons[index],
          color: Colors.white24,
          textColor: Colors.white,

        );
      }
    });


      
        



  }}