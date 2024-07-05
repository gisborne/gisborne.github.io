import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/macos/path_renderer.dart';

import '../macos/narrow.dart';
import '../macos/wide.dart';

class Root extends StatelessWidget{
  static late PathRenderer renderer;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const breakpoint = 600.0;
    if (screenWidth >= breakpoint) {
      // widescreen: menu on the left, content on the right
      return Wide();
    } else {
      // narrow screen: show content, menu inside drawer
      return Narrow();
    }
  }
}