import 'package:flutter/material.dart';
import 'package:grocers/Screen/home.dart';

import 'Screen/cartScr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: SplashScr(),
      home: CartScreen(),
      // home: HomeScreen(),
      // home: WelcomeScr()
    );
  }
}
