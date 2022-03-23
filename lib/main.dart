import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gather',
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0XFFFA4A0C)),
      ),
    );
  }
}
