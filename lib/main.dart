import 'package:flutter/material.dart';
import 'package:note2025/import.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            appBarTheme: Theme.of(context).appBarTheme.copyWith(
                backgroundColor: Colors.transparent,
                titleTextStyle: TextStyle(
                  fontSize: 33,
                  color: primary,
                ))),
        title: 'Note',
        debugShowCheckedModeBanner: false,
        home: MainSc());
  }
}
