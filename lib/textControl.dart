import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function changeText;

  TextControl(this.changeText);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: this.changeText,
            child: Text(
              'Press the Button',
              style: TextStyle(
                color: Colors.white
                ),
            ),
            color: Colors.blue,

            );
  }
}