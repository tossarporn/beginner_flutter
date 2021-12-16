import 'package:flutter/material.dart';
import 'FoodMenu.dart';
import 'Money_Box.dart';
import 'asychronous_future.dart';
import 'package:http/http.dart' as htpp;

void main() async {
  //var app = Myapp();
  //runApp(app); เขียนแบบสร้างตัวแปร
  runApp(Myapp());
  print(await loginUser()); //รอข้อมูล
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
  int number = 0;
  //กลุ่มข้อมูล
  @override
  void initState() {
    super.initState();
    getExchangeRate();
  }

  Future<void> getExchangeRate() async {
    final url = Uri.parse("https://fakestoreapi.com/products/1");
    //var response = await htpp.get(url);
    htpp.Response response = await htpp.get(url);
    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print("fails");
    }
  }

  //แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    print("เรียกใช้งาน build");
    return Scaffold(
      appBar: AppBar(
        title: Text("อัตราการแลกเปลี่ยนสกุลเงิน",
            style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
