import 'package:flutter/material.dart';
import 'package:resume/macos/text_style.dart';
import 'package:styled_text/styled_text.dart';
import 'package:url_launcher/url_launcher.dart';

class SimpleStyledText extends StatelessWidget {
  final StyledText content;

  SimpleStyledText(
    String source,
    [Key? key]) :
      content = _getStyled(source),
      super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: content
    );
  }

  static _getStyled(source) {
    return StyledText.selectable(
      text: source,
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
    );
  }
}