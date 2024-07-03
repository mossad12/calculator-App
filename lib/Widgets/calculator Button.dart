import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/calc_Provider.dart';
import '../constants/Colors.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Provider.of<CalculatorProvider>(context, listen: false).setValue('='),
      child: Container(
        height: 160,
        width: 70,
        decoration: BoxDecoration(
          color: AppColor.blueColor,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: Text(
            '=',
            style: TextStyle(fontSize: 35),
          ),
        ),
      ),
    );
  }
}
