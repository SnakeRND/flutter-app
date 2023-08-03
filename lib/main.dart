import 'package:flutter/material.dart';

void main() => runApp(const ElevatedButtonExampleApp());

class ElevatedButtonExampleApp extends StatelessWidget {
  const ElevatedButtonExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        appBar: MyCustomAppBar(
          height: 150, key: null,
        ),
        body: ElevatedButtonExample(),
      ),
    );
  }
}

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const MyCustomAppBar({super.key,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.grey[300],
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              color: Colors.grey[300],
              padding: const EdgeInsets.all(15),
              child: Row(children: [
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        contentPadding: EdgeInsets.all(10),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
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
          const SizedBox(height: 30),
          Text(
            'Count: $_count',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: () => setState(() => _count++),
            child: const Text('Enabled'),
          ),
          const SizedBox(height: 30),
          const Image(
            image: AssetImage('assets/images/Google__G__Logo.svg.png'),
            width: 50,
          )
        ],
      ),
    );
  }
}
