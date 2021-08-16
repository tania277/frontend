import 'package:flutter/material.dart';

class InputDecorations {

  static InputDecoration authInputDecoration({
    required String hintText,
    required String labelText,
    IconData? prefixIcon
  }) {
    return InputDecoration(
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(
                  color: Colors.black,
                ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal,
                  width: 2
                  )
                ),
                hintText: hintText,
                labelText: labelText,
                labelStyle: TextStyle(color: Colors.teal
                ),
                prefixIcon: prefixIcon !=null
                ? Icon(prefixIcon, color: Colors.teal)
                : null
              );
  }

}