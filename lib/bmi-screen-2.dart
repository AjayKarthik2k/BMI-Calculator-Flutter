import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  double _bmiResult = 0;
  String _textResult = "";

  @override
  void initState() {
    super.initState();
  }

  // method calculates BMI and
  // called when button is pressed
  void calculateBMI() {
    double _h = double.parse(_heightController.text);
    double _w = double.parse(_weightController.text);
    setState(() {
      _bmiResult = _w / (_h * _h);
      if (_bmiResult > 25) {
        _textResult = "You\'re over weight";
      } else if (_bmiResult >= 18.5 && _bmiResult <= 25) {
        _textResult = "You have normal weight";
      } else {
        _textResult = "You\'re under weight";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).padding.top;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final usableHeight = screenHeight -
        (statusBarHeight +
            (AppBar()
                .preferredSize
                .height)); // screen height excluding statusbar and height of appbar

    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 28, 28, 1),
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(color: Color.fromARGB(255, 252, 201, 28)),
        ),
        backgroundColor: Color.fromRGBO(28, 28, 28, 1),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: screenWidth * 0.4,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: _heightController,
                    decoration: InputDecoration(
                        hintStyle:
                            TextStyle(fontSize: 42, color: Colors.white60),
                        hintText: "Height(m)",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 14,
                        )
                        // prefixIcon: Icon(Icons.height_sharp),
                        ),
                    style: TextStyle(
                        fontSize: 42, color: Color.fromARGB(255, 252, 201, 28)),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r'(^\d*\.?\d{0,3})')),
                      FilteringTextInputFormatter.deny(RegExp('[\\-|\\ ]')),
                    ],
                  ),
                ),
                Container(
                  width: screenWidth * 0.5,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: _weightController,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 42, color: Colors.white60),
                      hintText: "Mass(kg)",
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                        fontSize: 42, color: Color.fromARGB(255, 252, 201, 28)),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r'(^\d*\.?\d{0,3})')),
                      FilteringTextInputFormatter.deny(RegExp('[\\-|\\ ]')),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            TextButton(
              onPressed: calculateBMI,
              child: Text(
                "CALCULATE",
                style: TextStyle(
                    color: Color.fromARGB(255, 252, 201, 28),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              child: Text(
                _bmiResult.toStringAsFixed(2),
                style: TextStyle(
                  color: Color.fromARGB(255, 252, 201, 28),
                  fontSize: 90,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Visibility(
              visible: _textResult.isNotEmpty,
              child: Container(
                child: Text(
                  _textResult,
                  style: TextStyle(
                    color: Color.fromARGB(255, 252, 201, 28),
                    fontSize: 32,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
