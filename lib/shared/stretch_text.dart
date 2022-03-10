import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/macos/text_style.dart';
import 'package:styled_text/styled_text.dart';
import 'package:url_launcher/url_launcher.dart';

typedef Notifyee = void Function(bool);
class StretchText extends StatefulWidget {
  final Widget shortText;
  final Widget longText;

  StretchText({
      required
    String shortSource,
      required
    String longSource,
    Key? key
  }) :
      shortText = _styledText(shortSource),
      longText = _styledText(longSource),
      super(key: key);

  static Widget _styledText(String shortSource) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: StyledText.selectable(
        text: shortSource,
        newLineAsBreaks: true,
        tags: {
          'link': StyledTextActionTag(
            (text, attrs) {
              final String link = attrs['href'] ?? '';
              launch(link);
            },
            style: const TextStyle(
                color: Colors.indigoAccent,
            ),
          ),
          'i': StyledTextTag(style: const TextStyle(fontStyle: FontStyle.italic))
        },
        style: mainStyle,
      ),
    );
  }

  @override
  State<StatefulWidget> createState() => _StretchTextState();

  static Map<String, StyledTextTagBase> stretchTextTags = {
    'link': StyledTextActionTag(
      (String? text, Map<String?, String?> attrs) {
        final String link = attrs['href'] ?? '';
        launch(link);
      },
    ),
  };
}

class _StretchTextState extends State<StretchText> {
  late final _RotateButton _closedButton;
  late final _RotateButton _openButton;
  bool _rotated = false;
  late Widget _currentText;

  @override
  void initState() {
    _closedButton = _RotateButton(rotated: false, clicked: rotate);
    _openButton = _RotateButton(rotated: true, clicked: rotate);
    _currentText = widget.shortText;
    super.initState();
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
    Widget first, second;
    setState(() {
      _rotated = !_rotated;
      if (_rotated) {
        first = widget.shortText;
        second = widget.longText;
      } else {
        first = widget.longText;
        second = widget.shortText;
      }
        _currentText = Expanded(
          child: AnimatedCrossFade(
              duration: const Duration(milliseconds: 200),
              firstChild: first,
              secondChild: second,
              crossFadeState: CrossFadeState.showSecond,
          ),
        );
    });
  }
}

class _RotateButton extends StatelessWidget {
  final bool rotated;
  final void Function() clicked;

  const _RotateButton({
      required
    this.rotated,
      required
    this.clicked,
    Key? key
}) :
      super(key: key);

  @override
  Widget build(BuildContext context) {
    var _icon = rotated
        ? const Icon(CupertinoIcons.chevron_down)
        : const Icon(CupertinoIcons.chevron_right);

    return IconButton(icon: _icon, onPressed: clicked);
  }
}
