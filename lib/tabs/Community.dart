import 'package:flutter/material.dart';

class MyCommu extends StatefulWidget {
  const MyCommu({super.key});

  @override
  State<MyCommu> createState() => _MyCommuState();
}

class _MyCommuState extends State<MyCommu> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Community', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
