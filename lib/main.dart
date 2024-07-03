import 'package:calc2/Screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider/calc_Provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculatorProvider(),
      child: MaterialApp(
          theme: ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          initialRoute: splash.routeName,
          routes: {
            splash.routeName: (context) => splash(),
          }),
    );
  }
}
