import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mybasicapp/widget/myAppImg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // สร้าง state
  int lastIndex = 0;
  List<Widget> more_display = [];

  // แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    List<Widget> display = [];
    // สร้างกลุ่มข้อมูล
    for (int i = 0; i < 10; i++) {
      display.add(Text("Row $i", style: TextStyle(fontSize: 20)));
      lastIndex++;
    }

    display.addAll(more_display);
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Center(
        child: ListView( // เมื่อ data เกินหน้าจอ ก็สามารถ scroll ดูได้ down up
          children: display,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getMoreList,
        child: Icon(Icons.more),
      ),
    );
  }

  void getMoreList() {
    for (int i = lastIndex; i < lastIndex + 10; i++) {
      setState(() {
        more_display.add(Text("Row $i", style: TextStyle(fontSize: 20),));
      });
    }
  }
}
