import 'package:bloc_counter/bloc/counter_bloc.dart';
import 'package:bloc_counter/bloc/counter_event.dart';
import 'package:bloc_counter/bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => CounterBloc(),
        child: MyHomePage(),
      ),
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  int? value;
  MyHomePage({Key? key, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Flutter Bloc Counter")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  '${state.value}',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    context.read<CounterBloc>().add(Increament());
                  },
                  icon: const Icon(Icons.add),
                  label: const Text(
                    '(+1)',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ElevatedButton.icon(
                    onPressed: () {
                      context.read<CounterBloc>().add(Decreament());
                    },
                    icon: const Icon(Icons.remove),
                    label: const Text(
                      '(-1)',
                      style: TextStyle(fontSize: 20),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
