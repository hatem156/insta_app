import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff2B475E);


const decorationTextfield = InputDecoration(
  
  // To delete borders
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide.none,
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.grey,
    ),
  ),
  // fillColor: Colors.red,
  filled: true,
  contentPadding: EdgeInsets.all(8),
);

const mobileBackgroundColor = Color.fromRGBO(0, 0, 0, 1);
const webBackgroundColor = Color.fromRGBO(32, 33, 36, 1);
const primaryColor = Colors.white;
const secondaryColor = Color.fromARGB(166, 158, 158, 158);
const blueColor = Color.fromRGBO(0, 149, 246, 1);