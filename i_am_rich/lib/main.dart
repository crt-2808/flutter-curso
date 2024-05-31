import 'package:flutter/material.dart';

//is the main function of the app
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text('I am Rich', style: TextStyle(color:Colors.white)),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image.asset('images/diamond.webp'), // Mostrar la imagen
        ),
      ),
    ),
  );
}
