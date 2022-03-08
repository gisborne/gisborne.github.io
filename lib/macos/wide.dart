import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/macos/menu_tile.dart';

import 'layout.dart';
import 'layout_state.dart';

class Wide extends Layout {
  @override
  State<StatefulWidget> createState()  => _WideState();
}

class _WideState extends LayoutState<Wide> implements ChangedReceiver{
  @override
  Widget build(BuildContext _context) {
    return Material(
      child: Row(
        children: [
          Container(
            width: 250,
            child: menu,
          ),
          // vertical black line as separator
          Container(width: 0.5, color: Colors.black),
          Expanded(
            child: menu.page
          ),
        ],
      ),
    );
  }
}