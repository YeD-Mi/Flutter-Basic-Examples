import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const FirstPage(title: 'Flutter Buttons'),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key, required this.title});

  final String title;

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: _buildBody(),
      floatingActionButton: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: FloatingActionButton(
            backgroundColor: Colors.amber,
            onPressed: () {},
            tooltip: 'Floating Button',
            child: const Icon(
              Icons.mouse,
              color: Colors.teal,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
    );
  }

  _buildBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Flutter Button Example',
          ),
          TextButton(
            onPressed: null,
            child: Text(
              'Text Button',
              style: TextStyle(color: Colors.teal),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Elevated Button',
              style: TextStyle(color: Colors.teal),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: InkWell(
              onTap: null,
              child: SizedBox(
                height: 15,
                child: Text(
                  'Inkwell Button',
                  style: TextStyle(color: Colors.teal),
                ),
              ),
            ),
          ),
          IconButton(onPressed: null, icon: Icon(Icons.ads_click_rounded)),
          OutlinedButton(onPressed: null, child: Text('Outline Button')),
        ],
      ),
    );
  }
}
