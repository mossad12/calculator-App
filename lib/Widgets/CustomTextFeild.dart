import 'package:flutter/material.dart';

import '../constants/Colors.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: TextField(
        controller: controller,
        style: TextStyle(fontSize: 50),
        decoration: InputDecoration(
          fillColor: AppColor.grayDark,
          filled: true,
          border: InputBorder.none,
        ),
        readOnly: true,
        autofocus: true,
        showCursor: true,
        cursorColor: AppColor.blueColor,
      ),
    );
  }
}
