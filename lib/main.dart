import 'package:flutter/material.dart';

void main() {
  //var app = Myapp();
  //runApp(app); เขียนแบบสร้างตัวแปร
  runApp(Myapp());
}

//สร้าง widget แบบ StatelessWidget เปลี่ยนแปลงค่าไม่ได้ มีหน้าที่แสดง themeApp()
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "my App",
      home: MyhomePage(),
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}

//สร้าง widget แบบ StatefulWidget เปลี่ยนแปลงค่าได้
class MyhomePage extends StatefulWidget {
  const MyhomePage({Key? key}) : super(key: key);

  @override
  _MyhomePageState createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  int number = 1; //การสร้าง state
  //แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("เลือกเมนู"),
        ),
        body: ListView.builder(itemCount: 15, itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("เมนูที่${index+1}"),
          );
        }));
  }
}
