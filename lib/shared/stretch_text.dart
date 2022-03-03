import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';
import 'package:url_launcher/url_launcher.dart';

typedef Notifyee = void Function(bool);
class StretchText extends StatefulWidget {
  final StyledText shortText;
  final StyledText longText;

  StretchText({
      required
    String shortSource,
      required
    String longSource,
    Key? key
  }) :
      shortText = StyledText(text: shortSource),
      longText = StyledText(text: longSource),
      super(key: key);

  @override
  State<StatefulWidget> createState() => _StretchTextState();

  static Map<String, StyledTextTagBase> stretchTextTags = {
    'link': StyledTextActionTag(
      (String? text, Map<String?, String?> attrs) {
        final String link = attrs['href'] ?? '';
        launch(link);
      }
    )
  };
}

class _StretchTextState extends State<StretchText> {
  late final _RotateButton _closedButton;
  late final _RotateButton _openButton;
  bool _rotated = false;
  late Widget _currentText;

  void initState() {
    _closedButton = _RotateButton(rotated: false, clicked: rotate);
    _openButton = _RotateButton(rotated: true, clicked: rotate);
    _currentText = widget.shortText;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _rotated ? _openButton : _closedButton,
        _currentText,
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }

  void rotate() {
    setState(() {
      _rotated = !_rotated;
      _currentText = _rotated ? widget.longText : widget.shortText;
    });
  }
}

class _RotateButton extends StatelessWidget {
  final bool rotated;
  final void Function() clicked;

  _RotateButton({
      required
    this.rotated,
      required
    this.clicked,
    Key? key
}) :
      super(key: key);

  @override
  Widget build(BuildContext context) {
    return rotated
      ? IconButton(icon: Icon(CupertinoIcons.chevron_down), onPressed: clicked)
      : IconButton(icon: Icon(CupertinoIcons.chevron_right), onPressed: clicked);
  }
}
