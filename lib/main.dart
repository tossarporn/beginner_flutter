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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,//กำหนดตำแหน่งwidgetในแนวตั้ง(start,center,end+spaceBetween(คำนวณระยะห่างwidgetชิดขอบ),spaceAround(คำนวณระยะห่างwidgetไม่ชิดขอบ))
            children: [
              Text("hello flutter"),
              Text("hello dart"),
              Text("hello google"),
            ],
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.orange),
    );
  }
}
