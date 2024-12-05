import 'package:flutter/material.dart';
import 'package:login_flutter/Login1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.amber.shade900,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}
