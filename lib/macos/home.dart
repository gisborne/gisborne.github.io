import 'package:flutter/material.dart';
import 'package:resume/macos/macos_menu.dart';

class Home extends StatelessWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: title,
        theme: ThemeData.from(
            colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.purple.shade600
            )
        ),
        home: Resume(title)
    );
  }
}

class Resume extends StatelessWidget {
  final String title;

  const Resume(this.title, [Key? key]):
    super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        title: Text(title)
      ),
      body: const FlutterLogo(),
    );
  }
}

class NavDrawer extends StatelessWidget {
  const NavDrawer([Key? key]):
      super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MacOSMenu()
    );
  }

}
