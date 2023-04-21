import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyAppImg extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;
  const MyAppImg({Key? key, required this.imageUrl, required this.width, required this.height}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image(
      image: NetworkImage(
        this.imageUrl,
      ),
      width: width,
      height: height,
    );
  }
}
