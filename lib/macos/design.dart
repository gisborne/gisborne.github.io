import 'package:flutter/cupertino.dart';
import 'package:resume/shared/stretch_text.dart';

class Design extends StatelessWidget {
  const Design([Key? key]): super(key: key);

  @override
  Widget build(BuildContext context) {
    return StretchText(
        shortSource: 'Short',
        longSource: 'Long',
    );
  }
}