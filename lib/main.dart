import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    title: "my App",
    home: Scaffold(
      appBar: AppBar(
        title: Text("hello flutter"),
      ),
      body: Text("hello people"),
    ),
    theme: ThemeData(primarySwatch: Colors.orange),
  );
  runApp(app);
}
