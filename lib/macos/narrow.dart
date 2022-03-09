import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/macos/widget_decorators.dart';
import 'package:resume/macos/menu_tile.dart';

import 'layout_state.dart';

class Narrow extends StatefulWidget {
  @override
  State<StatefulWidget> createState()  => _NarrowState();
}

class _NarrowState extends LayoutState<Narrow> implements ChangedReceiver{
  bool _in_menu = true;

  @override
  Widget build(BuildContext _context) {
    return Material(
      child:
        _in_menu
          ? menu
          : _backable(
          back_to: () {
            setState(() {
              _in_menu = true;
            });
          },
          on: menu.page,
      ),
    );
  }

  @override
  void changed(Widget newPage) {
    setState(() {
      _in_menu = false;
      super.changed(newPage);
    });
  }
}

class _backable extends StatelessWidget {
  final void Function() back_to;
  final Widget on;

  _backable({
      required
    this.back_to,
      required
    this.on,
    Key? key
  })  :
      super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: CupertinoButton(
            child: Icon(Icons.arrow_back_ios),
            onPressed: back_to,
          ).withPointer()
        ),
        Expanded(child: on),
      ]
    );
  }

}
