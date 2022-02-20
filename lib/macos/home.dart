import 'package:flutter/material.dart';
import 'package:resume/macos/menu_tile.dart';

import 'nav_drawer.dart';

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

class Resume
    extends StatefulWidget {
  final String title;

  const Resume(this.title, [Key? key]):
    super(key: key);

  @override
  void changed(Widget new_page) {
    // TODO: implement changed
  }

  @override
  State<StatefulWidget> createState() => _ResumeState();
}

class _ResumeState
    extends State<Resume>
    implements ChangedReceiver {
  late NavDrawer _drawer;
  late Widget _page;

  _ResumeState() {
    _drawer = NavDrawer(
      notifyee: this
    );
    _page = _drawer.current_page;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _drawer,
      appBar: AppBar(
          title: Text(widget.title)
      ),
      body: _page,
    );
  }

  @override
  void changed(Widget new_page) {
    setState((){
      _page = new_page;
    });
  }
}
