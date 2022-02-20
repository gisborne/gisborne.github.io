import 'package:flutter/material.dart';
import 'package:resume/macos/macos_menu.dart';
import 'package:resume/shared/menu.dart';
import 'package:resume/shared/root.dart';
import 'macos/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guyren Howe Résumé',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Root(),
    );
  }
}
