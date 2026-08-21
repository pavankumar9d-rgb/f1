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
      home: const BreakpointPage(),
    );
  }
}

class BreakpointPage extends StatelessWidget {
  const BreakpointPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    String screenType;

    if (width < 600) {
      screenType = 'Mobile Screen';
    } else if (width < 1200) {
      screenType = 'Tablet Screen';
    } else {
      screenType = 'Desktop Screen';
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQuery Breakpoints'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              screenType,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Screen Width: ${width.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
