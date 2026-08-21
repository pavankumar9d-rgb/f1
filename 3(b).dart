import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Responsive LayoutBuilder')),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              return Row(
                children: [
                  Expanded(child: Container(color: Colors.redAccent, child: const Center(child: Text('Left Pane')))),
                  Expanded(child: Container(color: Colors.blueAccent, child: const Center(child: Text('Right Pane')))),
                ],
              );
            } else {
              return Column(
                children: [
                  Expanded(child: Container(color: Colors.redAccent, child: const Center(child: Text('Top Pane')))),
                  Expanded(child: Container(color: Colors.blueAccent, child: const Center(child: Text('Bottom Pane')))),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
