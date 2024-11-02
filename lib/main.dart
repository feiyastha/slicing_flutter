// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          scrolledUnderElevation: 0,
          title: Container(
            margin: const EdgeInsets.all(20),
            child: Row(
              children: <Widget>[],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 50.0), 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround, 
            children: [
              topButton('assets/krabby.jpeg'), // Left image
              topButton('assets/patty.jpeg'), // Center image
              topButton('assets/minuman.jpeg'), // Right image
            ],
          ),
        ),
      ),
    );
  }

  Widget topButton(String imagePath) {
    return Container(
      width: 80, // Set button width
      height: 80, // Set button height
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Image.asset(imagePath),
    );
  }
}
