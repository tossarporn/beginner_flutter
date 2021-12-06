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
      body: Center(
        child: ListView(
          children: getData(30),
        ),
      ),
    );
  }

//เตรียมข้อมูล
  List<Widget> getData(int count) {
//กลุ่มข้อมูลTextWidget
//ListViewจะใช้แสดงขนาดเล็ก(4-10รายการ)
//ListView.bullderจะใช้แสดงขนาดใหญ่ผ่านPropertiesชื่อว่า"itemcount"
    List<Widget> data = [];
    for (var i = 0; i < count; i++) {
      var menu = ListTile(
        title: Text(
          "เมนู${i + 1}",
          style: TextStyle(fontSize: 25),
        ),
        subtitle: Text("หัวข้อย่อย ${i + 1}"),
      );
      data.add(menu);
    } //loopDataTextWidget
    return data;
  } //function
}
