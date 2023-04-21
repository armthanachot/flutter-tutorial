import 'package:flutter/material.dart';
import 'package:mybasicapp/widget/myApp.dart';

void main() async {
  const app = MyApp();
  runApp(app);
//   print(await loginUserAsync());
//   print("doing another task...");
}

List<String> loginUser() {
  List<String> users = getUserFromDB();
  return users;
}

List<String> getUserFromDB() {
  return ["Thanachot", "Arm"];
}

// ต้องระบุ Future ที่ function ด้วย เพื่อให้ code รอค่าที่จะมาจาก function getFutureUser ที่เป็น asynchronous  ที่ return Future value ได้
Future<List<String>> loginUserAsync() async {
  return await getFutureUser();
}

// ข้อมูลที่จะได้ในอนาคต ต้องรอ 10 วิ
Future<List<String>> getFutureUser() {
  List<String> users = [
    "Thanachot Tesjaroen",
    "Patcharakorn sukson",
  ];
  // return Future.value(users); // การ return แบบปกติ ให้ตรงกับ type ที่ defined
  return Future.delayed(Duration(seconds: 10), () => users); // delay 10 seconds
}
