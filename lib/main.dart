import 'package:flutter/material.dart';
import 'package:split_bill_app/screens/dashboard.dart';
import 'package:split_bill_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}
