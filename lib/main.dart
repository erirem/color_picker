import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        useMaterial3: false,
        textTheme: TextTheme(labelLarge: TextStyle(
          color: Colors.red, 
          fontSize: 24
          )),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.yellow,
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _counter = 0;

  void _counterIncrement() {
    setState(() {
      _counter++;
      debugPrint("Counter: $_counter");
    });
  }

  void _counterDecrement() {
    setState(() {
      _counter--;
      debugPrint("Counter: $_counter");
    });
  }

  void _counterReset() {
    setState(() {
      _counter = 0;
      debugPrint("Counter: $_counter");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Part 2 - Flutter Basics')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Button presesed count:",
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Text(
              _counter.toString(),
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                color: _counter < 0 ? Colors.red : Colors.green,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Theme.of(context).colorScheme.primary,
            onPressed: () {
              _counterIncrement();
            },
            child: const Icon(Icons.add),
          ),
          SizedBox(height: 4),
          FloatingActionButton(
            onPressed: () {
              _counterDecrement();
            },
            child: const Icon(Icons.remove),
          ),
          SizedBox(height: 4),
          FloatingActionButton(
            onPressed: () {
              _counterReset();
            },
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
