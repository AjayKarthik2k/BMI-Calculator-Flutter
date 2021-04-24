import 'package:bmi_calculator/custom-text-field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'bmi-screen-2.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMICalculator(),
    );
  }
}

// class BMICalculator extends StatefulWidget {
//   @override
//   _BMICalculatorState createState() => _BMICalculatorState();
// }

// class _BMICalculatorState extends State<BMICalculator> {
//   double userHeight;
//   double userWeight;
//   double bmi;
//   var textController = TextEditingController();
//   var bmiController = TextEditingController();

//   @override
//   void initState() {
//     bmiController.text = '';
//     textController.text = '';
//     super.initState();
//   }

//   // method calculates BMI and
//   // called when button is pressed
//   void calculateBMI() {
//     setState(() {
//       bmi = (userWeight / (userHeight * userHeight));
//       textController.text = 'Your BMI is';
//       bmiController.text = '$bmi';
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final statusBarHeight = MediaQuery.of(context).padding.top;
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;
//     final usableHeight = screenHeight -
//         (statusBarHeight +
//             (AppBar()
//                 .preferredSize
//                 .height)); // screen height excluding statusbar and height of appbar

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "BMI Calculator",
//           style: TextStyle(color: Color.fromARGB(255, 252, 201, 28)),
//         ),
//         backgroundColor: Color.fromRGBO(28, 28, 28, 1),
//         centerTitle: true,
//         elevation: 0,
//       ),
//       body: Container(
//         color: Color.fromRGBO(28, 28, 28, 1),
//         height: usableHeight,
//         width: screenWidth,
//         child: Column(
//           children: [
//             const SizedBox(height: 15),
//             // CustomTextField(
//             //   hintText: "Your Height",
//             //   prefixIcon: Icon(Icons.height_sharp),
//             //   // controller: heightController,
//             // ),
//             Container(
//               width: screenWidth * 0.6,
//               height: screenHeight * 0.055,
//               decoration: BoxDecoration(
//                 color: Colors.blueGrey,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: TextField(
//                 decoration: InputDecoration(
//                   hintStyle: TextStyle(fontSize: 20, color: Colors.white60),
//                   hintText: "Your Height (cms)",
//                   border: InputBorder.none,
//                   prefixIcon: Icon(Icons.height_sharp),
//                 ),
//                 style: TextStyle(fontSize: 20, color: Colors.white),
//                 keyboardType: TextInputType.number,
//                 inputFormatters: [
//                   FilteringTextInputFormatter.allow(
//                       RegExp(r'(^\d*\.?\d{0,3})')),
//                   FilteringTextInputFormatter.deny(RegExp('[\\-|\\ ]')),
//                 ],
//                 onChanged: (height) {
//                   try {
//                     userHeight = double.parse(height);
//                     print(userHeight);
//                   } catch (FormatException) {
//                     print("Error");
//                   }
//                 },
//               ),
//             ),

//             const SizedBox(height: 25),
//             // CustomTextField(
//             //   hintText: "Your Weight",
//             //   prefixIcon: Icon(Icons.line_weight_sharp),
//             //   // controller: weightController,
//             // ),
//             Container(
//               width: screenWidth * 0.6,
//               height: screenHeight * 0.055,
//               decoration: BoxDecoration(
//                 color: Colors.blueGrey,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                   hintStyle: TextStyle(fontSize: 20, color: Colors.white60),
//                   hintText: "Your Weight",
//                   border: InputBorder.none,
//                   prefixIcon: Icon(Icons.line_weight_sharp),
//                 ),
//                 style: TextStyle(fontSize: 20, color: Colors.white),
//                 keyboardType: TextInputType.number,
//                 inputFormatters: [
//                   FilteringTextInputFormatter.allow(
//                       RegExp(r'(^\d*\.?\d{0,3})')),
//                   FilteringTextInputFormatter.deny(RegExp('[\\-|\\ ]')),
//                 ],
//                 onChanged: (weight) {
//                   try {
//                     userWeight = double.parse(weight);
//                     print(userWeight);
//                   } catch (FormatException) {
//                     print("Error");
//                   }
//                 },
//               ),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: calculateBMI,
//               child: Text("CHECK BMI"),
//             ),
//             Text(
//               textController.text,
//               style: TextStyle(
//                 color: Colors.yellow,
//                 fontSize: 20,
//               ),
//             ),
//             Text(
//               bmiController.text,
//               style: TextStyle(
//                 color: Colors.yellow,
//                 fontSize: 30,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
