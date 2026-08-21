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
      home: const ResponsivePage(),
    );
  }
}

class ResponsivePage extends StatelessWidget {
  const ResponsivePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    if (width < 600) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Mobile UI'),
        ),
        body: const Center(
          child: Text(
            'Mobile Screen',
            style: TextStyle(fontSize: 25),
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Tablet/Desktop UI'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 200,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'Left Panel',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Container(
              width: 250,
              height: 200,
              color: Colors.green,
              child: const Center(
                child: Text(
                  'Right Panel',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
