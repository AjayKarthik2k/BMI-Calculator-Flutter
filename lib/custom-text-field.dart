// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class CustomTextField extends StatelessWidget {
//   final String hintText;
//   final Widget prefixIcon;
//   // final TextEditingController controller;

//   CustomTextField({
//     @required this.hintText,
//     @required this.prefixIcon,
//     // @required this.controller,
//   });

//   Widget build(context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;

//     return Container(
//       width: screenWidth * 0.6,
//       height: screenHeight * 0.055,
//       decoration: BoxDecoration(
//         color: Colors.blueGrey,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: TextFormField(
//         decoration: InputDecoration(
//           hintStyle: TextStyle(fontSize: 20, color: Colors.white60),
//           hintText: hintText,
//           border: InputBorder.none,
//           prefixIcon: prefixIcon,
//         ),
//         style: TextStyle(fontSize: 20, color: Colors.white),
//         keyboardType: TextInputType.number,
//         inputFormatters: [
//           FilteringTextInputFormatter.allow(RegExp(r'(^\d*\.?\d{0,3})')),
//           FilteringTextInputFormatter.deny(RegExp('[\\-|\\ ]')),
//         ],
//         onChanged: (value) {},
//       ),
//     );
//   }
// }
