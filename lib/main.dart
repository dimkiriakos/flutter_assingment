import 'package:flutter/material.dart';
import 'package:flutter_assignment/textControl.dart';
import 'package:flutter_assignment/textWidget.dart';
// import 'textWidget.dart';
// import './textControl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Assignment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Assignment'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _customText = 'Flutter Assignment Text';

  void _changeText() {
    setState(() {
      this._customText = 'You pressed the button';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Flutter Assignment')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 100,
              child:
                  // text
              TextWidget(newText: this._customText,)
            ),
          ),
          Center(
            child:
                //Text Control
                TextControl(this._changeText),
          ),
        ],
      ),
    );
  }
}
