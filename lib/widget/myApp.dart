import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mybasicapp/widget/stateless/myAppImg.dart';
import 'package:mybasicapp/widget/stateful/homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, // remove Debug in top right
        theme: ThemeData(primarySwatch: Colors.purple),
        title: "My App",
        home: MyHomePage()
        );
  }
}
