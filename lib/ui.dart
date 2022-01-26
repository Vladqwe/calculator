import 'package:flutter/material.dart;
class CalculatorUi extends StatefulWidget {
  const CalculatorUi({Key key}) : super (key : key);
  @override
  _CalculatorUiState createState() => _CalculatorUi();
}

class _CalculatorUiState extends State<CalculatorUi>{
  final calculator = MyCalc();
  var userInput = '';
  var answer = '';

  final List<String> buttons = [
    'C',
    '%',
    'DEL',
    '7',
    '8',
    '9',
    '/',
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
    '+',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:
        appBar: AppBar(
        title: Text('Calculator'),
    centerTitle: true,
    body: Column(
    children: <Widget>[
    Expanded(
    child: Container(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
    Container(
    padding: EdgeInsets.all(20),
    alignment: Alignment.centerRight,
    child: Text(
    userInput,
    style: TextStyle(fontSize: 18, color: Colors.white),
    ),
    ),
    ]),
    ),
    ),
    Expanded(
    flex: 3,
    child: Container(
    child: GridView.builder(
    itemCount: buttons.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 4),
    itemBuilder: (BuildContext context, int index) {
    // Clear Button
    /* if (index == 0) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            userInput = '';
                            answer = '0';
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.blue[50],
                        textColor: Colors.black,
                      );
                    }
 */
    // +/- button
    else if (index == 0) {
    return MyButton(
    buttonText: buttons[index],
    color: Colors.blue[50],
    textColor: Colors.black,
    );
    }
    // % Button
    else if (index == 1) {
    return MyButton(
    buttontapped: () {
    setState(() {
    userInput += buttons[index];
    });
    },
    buttonText: buttons[index],
    color: Colors.blue[50],
    textColor: Colors.black,
    );
    }
    // Delete Button
    else if (index == 2) {
    return MyButton(
    buttontapped: () {
    setState(() {
    userInput =
    userInput.substring(0, userInput.length - 1);
    });
    },
    buttonText: buttons[index],
    color: Colors.blue[50],
    textColor: Colors.black,
    );
    }
    // Equal_to Button
    else if (index == 17) {
    return MyButton(
    buttontapped: () {
    setState(() {
    equalPressed();
    });
    },
    buttonText: buttons[index],
    color: Colors.orange[700],
    textColor: Colors.white,
    );
    }

    //  other buttons
    else {
    return MyButton(
    buttontapped: () {
    setState(() {
    calculator.memory = buttons[index];
    });
    },
    buttonText: buttons[index],
    color: isOperator(buttons[index])
    ? Colors.blueAccent
        : Colors.white,
    textColor: isOperator(buttons[index])
    ? Colors.white
        : Colors.black,
    );
    }
    }), // GridView.builder