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
  int _num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Body Part",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.green,
                  fontWeight: FontWeight.bold),
            ),
            MyAppImg(
                imageUrl:
                    "https://images.unsplash.com/photo-1681673211977-2d3274d07ff9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
                width: 400,
                height: 200),
            Text("This is Current Num: $_num"),
            if (this._num < 0) Text("Error Number Cannot Less Than 0", style: TextStyle(color: Colors.red, fontSize: 20),), // add if condition
            Row(
              children: [
                FloatingActionButton(
                  onPressed: SetZero,
                  child: Icon(Icons.exposure_zero_sharp),
                ),
                FloatingActionButton(
                  onPressed: DecreaseNumber,
                  child: Icon(Icons.exposure_minus_1),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: AddNumber,
        child: Icon(Icons.plus_one),
        backgroundColor: Colors.blue,
      ),
    );
  }

  void AddNumber() {
    setState(() {
      this._num++;
    });
  }

  void DecreaseNumber() {
    setState(() {
      this._num--;
    });
  }

  void SetZero() {
    setState(() {
      this._num = 0;
    });
  }
}
