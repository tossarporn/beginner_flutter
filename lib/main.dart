import 'package:flutter/material.dart';
import 'FoodMenu.dart';
import 'Money_Box.dart';
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
  //กลุ่มข้อมูล
  List<FoodMenu> menu = [
    FoodMenu("กุ้งเผา", "500", "assets/food_img/Grilled Shrimp.jpg"),
    FoodMenu("กระเพราหมู", "80", "assets/food_img/fried_basil.jpg"),
    FoodMenu("ผัดไท", "60", "assets/food_img/Pad Thai.jpg"),
    FoodMenu("ส้มตำ", "40", "assets/food_img/papaya salad.jpg"),
  ];
  //แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("บัญชีของฉัน",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0), //ระยะห่างร่วม
          child: Column(
            children: [
              Money_Box("ยอดคงเหลือ", 10000,Colors.lightBlue, 120),
              SizedBox(height: 5),
              Money_Box("รายรับ", 15000,Colors.green, 120),
              SizedBox(height: 5),
              Money_Box("รายจ่าย", 3000,Colors.red, 120),
              SizedBox(height: 5),
              Money_Box("ค้างชำระ", 1200,Colors.orange, 120),
            ]
          )
        ));
  }
}
