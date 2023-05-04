import 'package:flutter/material.dart';
import 'package:resume/macos/menu_tile.dart';

import 'layout_state.dart';

class Wide extends StatefulWidget {
  @override
  State<StatefulWidget> createState()  => _WideState();
}

class _WideState extends LayoutState<Wide> implements ChangedReceiver{
  @override
  Widget build(BuildContext _context)
    => Material(
      child: Row(
        children: [
          SizedBox(
            width: 250,
            child: menu,
          ),
          // vertical black line as separator
          Container(width: 0.5, color: Colors.black),
          Expanded(
            child: page ?? const FlutterLogo()
          ),
        ],
      ),
    );
}