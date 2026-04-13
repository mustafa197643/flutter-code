import 'package:flutter/material.dart';
import 'package:battery_plus/battery_plus.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int battery = 0;

  void getBattery() async {
    final b = Battery();
    int level = await b.batteryLevel;
    setState(() => battery = level);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Device Info")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Battery: $battery%"),
              ElevatedButton(
                onPressed: getBattery,
                child: Text("Get Battery"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}