import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool val = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("ListTile & Switch")),
        body: ListTile(
          title: Text("Enable"),
          trailing: Switch(
            value: val,
            onChanged: (v) => setState(() => val = v),
          ),
        ),
      ),
    );
  }
}