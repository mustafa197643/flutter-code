import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  int score = 0;

  List questions = [
    {
      "q": "Capital of India?",
      "a": ["Mumbai", "Delhi", "Pune"],
      "ans": "Delhi"
    },
    {
      "q": "2 + 5 = ?",
      "a": ["5", "7", "9"],
      "ans": "7"
    },
  ];

  void checkAnswer(String val) {
    if (val == questions[index]["ans"]) {
      score++;
    }
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Quiz App")),
        body: index < questions.length
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    questions[index]["q"],
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  ...(questions[index]["a"] as List)
                      .map((option) => ElevatedButton(
                            onPressed: () => checkAnswer(option),
                            child: Text(option),
                          )),
                ],
              )
            : Center(
                child: Text(
                  "Final Score: $score",
                  style: TextStyle(fontSize: 22),
                ),
              ),
      ),
    );
  }
}