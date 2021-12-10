import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Money_Box extends StatelessWidget {
  String title;//ชื่อหมวดหมู่ / รายการ
  double amount;//จำนวนเงิน
  Color color;//สีของกล่อง
  double size;//ขนาดของกล่อง
  Money_Box(this.title, this.amount, this.color, this.size);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0), //ระยะห่างเจาะจงในContainerนั้นๆ
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10)),
      height: size,
      child: Row(
        crossAxisAlignment:
            CrossAxisAlignment.center, //กำหนดตำแหน่งภายในContainer
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(
              '${NumberFormat("#,###.##").format(amount)}',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
