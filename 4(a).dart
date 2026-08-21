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
          title: const Text('Icon Widget'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.home,
                size: 60,
                color: Colors.blue,
              ),
              SizedBox(width: 30),
              Icon(
                Icons.favorite,
                size: 60,
                color: Colors.red,
              ),
              SizedBox(width: 30),
              Icon(
                Icons.star,
                size: 60,
                color: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
