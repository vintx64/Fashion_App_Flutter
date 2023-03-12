import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomBtn extends StatelessWidget {
  CustomBtn({this.onTap, required this.titleBtn});
  String titleBtn;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(8)),
        width: double.infinity,
        height: 60,
        child: Center(
            child: Text(
          titleBtn,
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
