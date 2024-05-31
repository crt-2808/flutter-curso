import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("I am poor", style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image.asset("images/carbon.png"),
        ),
      ),
    )
  );
}