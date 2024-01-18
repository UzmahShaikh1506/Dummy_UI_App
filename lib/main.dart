import 'package:dummy_app/widgets/button_widget.dart';
import 'package:dummy_app/widgets/card_widget.dart';
import 'package:dummy_app/screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
