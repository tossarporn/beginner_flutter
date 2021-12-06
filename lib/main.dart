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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("begin_flutter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment
              .center, //กำหนดตำแหน่งwidgetในแนวตั้ง(start,center,end+spaceBetween(คำนวณระยะห่างwidgetชิดขอบ),spaceAround(คำนวณระยะห่างwidgetไม่ชิดขอบ))
          children: [
            Text("กดปุ่มเพื่อเพิ่มจำนวน"),
            Text(
              number.toString(), //"$number"แปลง int เป็น string ใช้อันไหนก็ได้
              style: TextStyle(fontSize: 60),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              number++;
            });
          },
          child: Icon(Icons.add) //สามารถเพิ่ม text()ได้,
          ),
    );
  }
}
