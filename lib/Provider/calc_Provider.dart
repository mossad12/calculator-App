import 'package:flutter/cupertino.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier {
  final Compcontroller = TextEditingController();

  setValue(String value) {
    String str = Compcontroller.text;
    switch (value) {
      case 'C':
        Compcontroller.clear();
        break;
      case 'AC':
        Compcontroller.text = str.substring(0, str.length - 1);
        break;
      case 'X':
        Compcontroller.text += '*';
        break;
      case '=':
        compute();
        break;
      default:
        Compcontroller.text += value;
    }
  }

  compute() {
    String text = Compcontroller.text;
    Compcontroller.text = text.interpret().toString();
  }

  @override
  void dispose() {
    super.dispose();
    Compcontroller.dispose();
  }
}
