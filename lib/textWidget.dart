import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String newText;

  TextWidget({this.newText});

  @override
  Widget build(BuildContext context) {
    return    Text(
                this.newText,
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              );
  }
}