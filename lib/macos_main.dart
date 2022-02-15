import 'package:flutter/material.dart';
import 'package:resume/macos/macos_menu.dart';
import 'package:resume/shared/menu.dart';
import 'package:resume/shared/root.dart';
import 'macos/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static Menu menu = getMenu();

  const MyApp(): _page = menu.
  Widget _page;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guyren Howe Résumé',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Root(
        menu: MacOSMenu(
          selected: (page) {
            state.page = page;
          }
        )
      ),
    );
  }

  @override
  State<StatefulWidget> createState() => _MyAppState();

  static Menu getMenu() => MacOSMenu();
}

class _MyAppState extends State<MyApp>{
  _MyAppState({
    Key? key,
      required
    Widget page
  }):
  this._page = page;

  void set page(Widget page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _page;
  }
}
