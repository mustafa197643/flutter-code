import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double r = 0, g = 0, b = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("RGB Slider App")),
        backgroundColor: Color.fromRGBO(r.toInt(), g.toInt(), b.toInt(), 1),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Red: ${r.toInt()}"),
            Slider(
              value: r,
              max: 255,
              onChanged: (val) => setState(() => r = val),
            ),

            Text("Green: ${g.toInt()}"),
            Slider(
              value: g,
              max: 255,
              onChanged: (val) => setState(() => g = val),
            ),

            Text("Blue: ${b.toInt()}"),
            Slider(
              value: b,
              max: 255,
              onChanged: (val) => setState(() => b = val),
            ),
          ],
        ),
      ),
    );
  }
}