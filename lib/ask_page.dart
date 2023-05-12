import 'package:flutter/material.dart';
import 'dart:math';

class AskPage extends StatefulWidget {
  final double imageWidth;
  final double imageHeight;
  const AskPage(
      {super.key, required this.imageWidth, required this.imageHeight});

  @override
  State<AskPage> createState() => _AskPageState();
}

class _AskPageState extends State<AskPage> {
  int generateRandomNumber(int numberLimit) {
    return Random().nextInt(numberLimit) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          generateRandomNumber(5);
        });
      },
      child: Image.asset(
        'images/ball${generateRandomNumber(5)}.png',
        height: widget.imageHeight,
        width: widget.imageWidth,
        fit: BoxFit.cover,
      ),
    );
  }
}
