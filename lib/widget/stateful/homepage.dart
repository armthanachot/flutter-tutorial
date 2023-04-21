import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mybasicapp/widget/foodMenu.dart';
import 'package:mybasicapp/widget/myAppImg.dart';

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
    List<FoodMenu> menus = [];
    menus.add(FoodMenu(
        name: "ข้าวผัดปู",
        price: 150,
        imageUrl:
            "https://images.unsplash.com/photo-1637759079728-3f900db7a782?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y3JhYiUyMGZyaWVkJTIwcmljZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"));
    menus.add(FoodMenu(
        name: "ข้าวผัดกุ้ง",
        price: 100,
        imageUrl:
            "https://images.unsplash.com/photo-1665199020996-66cfdf8cba00?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHNocmltcCUyMGZyaWVkJTIwcmljZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"));
    menus.add(FoodMenu(
        name: "ข้าวผัดหมู",
        price: 50,
        imageUrl:
            "https://media.istockphoto.com/id/1416030500/photo/close-up-fried-rice-with-pork-and-vegetables.jpg?b=1&s=170667a&w=0&k=20&c=mgp51pqjzwc-MB90gf3vwjH6c7yWJZE6p3Pg4a9ucwA="));
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: menus
                .length, // ถ้าระบุตรงนี้คือจำกัดขนาดของ list ควรใช้เมื่อมากกว่า 10
            itemBuilder: (BuildContext context, int index) {
              //สร้างรายการที่ไม่จำกัดในตอนเริ่ม ทำให้ตอน scroll จะได้รายการขึ้นมาเรื่อยๆ เหมาะสำหรับกลุ่มข้อมูลขนาดใหญ่
              return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ListTile(
                      leading: MyAppImg(
                          imageUrl: menus[index].imageUrl,
                          width: 100,
                          height: 100),
                      title: Text("${menus[index].name}"),
                      subtitle: Text("ราคา: ${menus[index].price} บาท"),
                      onTap: () => {
                        print(menus[index].name),
                        print(menus[index].price),
                      },
                    ),
                    Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.grey[400],
                    )
                  ]);
            }),
      ),
    );
  }
}
