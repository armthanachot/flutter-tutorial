import 'package:flutter/material.dart';
import 'package:mybasicapp/widget/stateless/horizontal_card.dart';
import 'package:mybasicapp/widget/stateless/moneyBox.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // สร้าง state

  // แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("บัญชีของฉัน"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(
              8.0), // ทำให้มี space จาก ขอบ layout ทุกด้าน 8.0 (required field padding)
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MoneyBox(
                boderRadius: 10,
                boxHeight: 150,
                money: 99999999,
                moneyFrontColor: Colors.white,
                moneyFrontSize: 20,
                title: "Balance",
                titleFrontColor: Colors.white,
                titleFrontSize: 20,
                boxColor: Colors.blueAccent,
                currency: "baht",
              ),
              MoneyBox(
                boderRadius: 10,
                boxHeight: 150,
                money: 99999999.88,
                moneyFrontColor: Colors.white,
                moneyFrontSize: 20,
                title: "Income",
                titleFrontColor: Colors.white,
                titleFrontSize: 20,
                boxColor: Colors.green,
                currency: "baht",
              ),
              MoneyBox(
                boderRadius: 10,
                boxHeight: 150,
                money: 12000.88,
                moneyFrontColor: Colors.white,
                moneyFrontSize: 20,
                title: "Outcome",
                titleFrontColor: Colors.white,
                titleFrontSize: 20,
                boxColor: Colors.red,
                currency: "baht",
              ),
            ],
          ),
        ));
  }
}
