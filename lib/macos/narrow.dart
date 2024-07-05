import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/macos/menu_tile.dart';
import 'package:resume/macos/widget_decorators.dart';

import 'layout_state.dart';

class Narrow extends StatefulWidget {
  @override
  State<StatefulWidget> createState()  => _NarrowState();
}

class _NarrowState extends LayoutState<Narrow> implements ChangedReceiver {
  bool _inMenu = true;

  @override
  Widget build(BuildContext _context) {
    return Material(
      child:
        _inMenu
          ? menu
          : _Backable(
            backTo: () {
              setState(() {
                _inMenu = true;
              });
            },
            on: page ?? FlutterLogo(),
          ),
    );
  }

  @override
  void changed(Widget newPage) {
    setState(() {
      _inMenu = false;
      super.changed(newPage);
    });
  }
}

class _Backable extends StatelessWidget {
  final void Function() backTo;
  final Widget on;

  const _Backable({
      required
    this.backTo,
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
            child: const Icon(Icons.arrow_back_ios),
            onPressed: backTo,
          ).withPointer()
        ),
        Expanded(child: on),
      ]
    );
  }

}
