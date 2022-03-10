import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui' as ui;
import 'dart:html' as html;

class Iframe extends StatelessWidget {
  final String path;

  Iframe({
      required
    this.path
  }) {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(path, (int viewId) {
      var iframe = html.IFrameElement();
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
