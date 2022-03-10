import 'package:flutter/cupertino.dart';

import '../shared/root.dart';

class PDFWidget extends StatelessWidget {
  final Widget _actual;

  PDFWidget({
      required
    String path,
    Key? key
}) :
      _actual = Root.renderer(path: path);

  @override
  Widget build(BuildContext context) {
    return _actual;
  }
}