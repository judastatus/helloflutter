import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'hello,this is flutter!',
      textDirection: TextDirection.ltr,
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.yellow),
    ));
  }
}
