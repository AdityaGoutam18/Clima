import 'package:flutter/material.dart';
import 'package:clima/screens/home_screen.dart';

void main() {
  runApp(const clima());
}

class clima extends StatelessWidget {
  const clima({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clima',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}