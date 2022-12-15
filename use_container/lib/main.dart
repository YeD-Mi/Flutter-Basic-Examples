import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Use Container"))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                constraints: BoxConstraints(maxWidth: 350, maxHeight: 150),
                height: 100,
                width: 300,
                padding: EdgeInsets.all(10),
                color: Colors.amber,
                child: Text("First Container")),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 8),
              child: Container(
                  constraints: BoxConstraints(maxWidth: 350, maxHeight: 150),
                  height: 100,
                  width: 300,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: const [Colors.deepPurple, Colors.yellow],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft)),
                  child: Text("Second Container")),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, top: 8),
              child: Container(
                  constraints: BoxConstraints(maxWidth: 350, maxHeight: 150),
                  height: 100,
                  width: 300,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      border: Border.all(width: 5, color: Colors.black),
                      gradient: RadialGradient(
                          colors: [Colors.deepPurple.shade800, Colors.yellow],
                          center: Alignment.bottomRight,
                          radius: 1.6)),
                  child: Text("Third Container")),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, top: 8),
              child: Container(
                  constraints: BoxConstraints(maxWidth: 350, maxHeight: 150),
                  height: 120,
                  width: 300,
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://i.pinimg.com/originals/6c/7e/af/6c7eaf68c17d07c8af8b3a1b2223b0bd.png'),
                        fit: BoxFit.cover),
                    border: Border.symmetric(
                      vertical: BorderSide(
                          color: Colors.deepOrangeAccent,
                          width: 10.0,
                          style: BorderStyle.solid),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "4. Container",
                      style: TextStyle(
                          backgroundColor: Colors.white,
                          fontSize: 14,
                          color: Colors.blueAccent),
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50, top: 8),
              child: Container(
                  constraints: BoxConstraints(maxWidth: 350, maxHeight: 150),
                  height: 100,
                  width: 300,
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.amber),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(100))),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Fifth Container"),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 60, top: 8),
              child: Container(
                  constraints: BoxConstraints(maxWidth: 350, maxHeight: 150),
                  height: 100,
                  width: 300,
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.indigoAccent.shade700),
                  child: Padding(
                    padding: EdgeInsets.only(left: 110.0, top: 35),
                    child: Text(
                      "6. Container",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, top: 8),
              child: Container(
                  constraints: BoxConstraints(maxWidth: 350, maxHeight: 150),
                  height: 100,
                  width: 300,
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.green.shade800,
                    borderRadius: BorderRadius.all(Radius.elliptical(80, 20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "7. Container",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 60, top: 8),
              child: Container(
                  constraints: BoxConstraints(maxWidth: 350, maxHeight: 150),
                  height: 100,
                  width: 300,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          offset: Offset(20.0, 10.0),
                        ),
                      ],
                      border: Border.all(width: 5, color: Colors.black),
                      gradient: RadialGradient(
                          colors: [Colors.deepPurple.shade800, Colors.yellow],
                          center: Alignment.bottomRight,
                          radius: 1.6)),
                  child: Text("8. Container")),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50, top: 8),
              child: Container(
                  constraints: BoxConstraints(maxWidth: 350, maxHeight: 150),
                  height: 100,
                  width: 300,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.deepPurple.shade300,
                          offset: Offset(20.0, 10.0),
                          blurRadius: 30),
                    ],
                    border: Border.all(width: 5, color: Colors.black),
                  ),
                  child: Text("9. Container")),
            ),
          ],
        ),
      ),
    );
  }
}
