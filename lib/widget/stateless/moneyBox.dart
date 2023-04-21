import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class MoneyBox extends StatelessWidget {
  final String title;
  final double titleFrontSize;
  final Color titleFrontColor;
  final double money;
  final double moneyFrontSize;
  final Color moneyFrontColor;
  final double boxHeight;
  final double boderRadius;
  final Color boxColor;
  final String currency;

  const MoneyBox({
    Key? key,
    required this.title,
    required this.titleFrontSize,
    required this.titleFrontColor,
    required this.money,
    required this.moneyFrontSize,
    required this.moneyFrontColor,
    required this.boxHeight,
    required this.boderRadius,
    required this.boxColor,
    required this.currency,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
          10), // ทำให้ใน layout มีขอบด้านใน 10 ทำให้เนืื้อหาด้านในก็จะห่างออกจากขอบ

      // สร้าง container อยากได้หลายกล่องก็เพิ่ม container เข้าไปอีก
      decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(
              boderRadius)), // ระบุคุณสมบัติของกล่อง container เช่น สี, โค้ง, ... (ยิ่ง เลข circular เยอะ ก็ยิ่งโค้งเยอะ)
      height: boxHeight,
      child: Row(
        children: [
          Text(title,
              style: TextStyle(
                  fontSize: titleFrontSize,
                  color: titleFrontColor,
                  fontWeight: FontWeight.bold)),
          Expanded(
            child: Text('${NumberFormat("#,###.##").format(money)} $currency',
                style: TextStyle(
                    fontSize: moneyFrontSize,
                    color: moneyFrontColor,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.right),
          )
        ],
      ),
    );
  }
}
