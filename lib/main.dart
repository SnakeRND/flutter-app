import 'package:flutter/material.dart';

void main() => runApp(const ElevatedButtonExampleApp());

class ElevatedButtonExampleApp extends StatelessWidget {
  const ElevatedButtonExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('X3Chat')),
        body: const ElevatedButtonExample(),
      ),
    );
  }
}

class ElevatedButtonExample extends StatefulWidget {
  const ElevatedButtonExample({super.key});

  @override
  State<ElevatedButtonExample> createState() => _ElevatedButtonExampleState();
}

class _ElevatedButtonExampleState extends State<ElevatedButtonExample> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('Count: $_count', style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: () => setState(() => _count++),
            child: const Text('Enabled'),
          ),
        ],
      ),
    );
  }
}
