import 'dart:html' as html;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Iframe extends StatelessWidget {
  final String path;

  Iframe({
    Key? key,
      required
    this.path
  }) : super(key: key) {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(path, (int viewId) {
      var iframe = html.IFrameElement();
      iframe.referrerPolicy = 'no-referrer';
      iframe.src = path;
      return iframe;
    });
  }
  @override
  Widget build(BuildContext context) {
    return HtmlElementView(
        viewType: path
    );
  }
}
