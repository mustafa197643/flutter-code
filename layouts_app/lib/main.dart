import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Layouts")),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text("A"), Text("B"), Text("C")],
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  Card(child: Center(child: Text("1"))),
                  Card(child: Center(child: Text("2"))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}