import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/calc_Provider.dart';
import '../constants/Colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.text, this.color = Colors.white});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Provider.of<CalculatorProvider>(context, listen: false)
          .setValue(text),
      child: Material(
        elevation: 3,
        color: AppColor.grayDark,
        borderRadius: BorderRadius.circular(50),
        child: CircleAvatar(
          radius: 36,
          backgroundColor: AppColor.grayColor,
          child: Text(
            text,
            style: TextStyle(
                color: color, fontSize: 32, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
