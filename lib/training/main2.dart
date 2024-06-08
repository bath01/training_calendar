import 'package:flutter/material.dart';


class MyWidgetBath extends StatelessWidget {
  const MyWidgetBath({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Part 2',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [],
        ),
      ),
    );
  }
}
