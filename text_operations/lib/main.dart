import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Operations',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Text Operations'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    const String vUsername = 'Hello. I am a variable.';
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                ('Hello, I am Yunus Emre.' * 10),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 2,
                    wordSpacing: 3),
              ),
              const SizedBox(height: 30),
              Text(
                ('Hello, I am Yunus Emre.' * 10),
                maxLines: 3,
                overflow: TextOverflow.clip,
                style: const TextStyle(
                    color: Colors.amber,
                    decoration: TextDecoration.underline,
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 5,
                    wordSpacing: 10),
              ),
              const SizedBox(height: 30),
              Text(
                ('Hello, I am Yunus Emre.' * 10),
                maxLines: 3,
                overflow: TextOverflow.visible,
                textAlign: TextAlign.right,
                style: const TextStyle(
                    backgroundColor: Colors.amber,
                    decoration: TextDecoration.overline,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 3,
                    wordSpacing: 5),
              ),
              const SizedBox(height: 30),
              Text(
                ('Hello, I am Yunus Emre.' * 10),
                maxLines: 3,
                overflow: TextOverflow.fade,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(backgroundColor: Colors.blueAccent),
              ),
              const SizedBox(height: 30),
              const Text(
                (vUsername),
                maxLines: 3,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              RichText(
                text: TextSpan(
                  text: 'Hello ',
                  style:
                      DefaultTextStyle.of(context).style.copyWith(fontSize: 10),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'bold',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14)),
                    TextSpan(text: ' world!'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
