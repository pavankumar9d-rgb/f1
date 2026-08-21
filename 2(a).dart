import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Text.rich Example'),
        ),
        body: Center(
          child: Text.rich(
            TextSpan(
              children: [
                const TextSpan(
                  text: 'Hello ',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                  ),
                ),
                const TextSpan(
                  text: 'Flutter ',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                const TextSpan(
                  text: 'World!',
                  style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
