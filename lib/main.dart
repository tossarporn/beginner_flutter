import 'package:flutter/material.dart';

void main() {
  //var app = Myapp();
  //runApp(app); เขียนแบบสร้างตัวแปร
  runApp(Myapp());
}

//สร้าง widget แบบ StatelessWidget ค่าคงที่
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "my App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello flutter"),
        ),
        body: Center(
            child: 
            Image(
          image: NetworkImage(
              "https://cdn.pixabay.com/photo/2021/11/23/13/32/forest-6818683__340.jpg"),
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.orange),
    );
  }
}
