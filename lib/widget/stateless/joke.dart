import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class JokeDisplay extends StatelessWidget {
  final int? id;
  final String? type;
  final String? setup;
  final String? punchline;
  final double boxHeight;
  final Color boxColor;
  final double fontSize;
  final Color fontColor;
  final double boderRadius;
  const JokeDisplay({
    Key? key,
    required this.id,
    required this.type,
    required this.setup,
    required this.punchline,
    required this.boxHeight,
    required this.boxColor,
    required this.fontSize,
    required this.fontColor,
    required this.boderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: boxHeight,
      decoration: BoxDecoration(color: boxColor, borderRadius: BorderRadius.circular(boderRadius)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Id: ",
                style: TextStyle(
                    fontSize: fontSize,
                    color: fontColor,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "${id}",
                style: TextStyle(fontSize: fontSize, color: fontColor),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Type: ",
                style: TextStyle(
                    fontSize: fontSize,
                    color: fontColor,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "${type}",
                style: TextStyle(fontSize: fontSize, color: fontColor),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Setup: ",
                style: TextStyle(
                    fontSize: fontSize,
                    color: fontColor,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "${setup}",
                style: TextStyle(fontSize: fontSize, color: fontColor),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Punchline: ",
                style: TextStyle(
                    fontSize: fontSize,
                    color: fontColor,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "${punchline}",
                style: TextStyle(fontSize: fontSize, color: fontColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
