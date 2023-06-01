import 'package:flutter/material.dart';

class MyCalls extends StatefulWidget {
  const MyCalls({super.key});

  @override
  State<MyCalls> createState() => _MyCallsState();
}

class _MyCallsState extends State<MyCalls> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Calls', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
