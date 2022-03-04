import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/macos/pdf_widget.dart';
import 'package:resume/macos/text_style.dart';
import 'package:styled_text/styled_text.dart';
import 'package:url_launcher/url_launcher.dart';

class Writing extends StatelessWidget {
  static const path = 'assets/guyren-writing-sample.pdf';

  final text = StyledText(
    text: 'I’ve done a variety of technical writing. Here is a chapter from a book I wrote to teach OOP to users of a Visual Basic knock-off called RealBasic (now <link href="https://xojo.com">Xojo</link>.)',
    tags: {
      'link': StyledTextActionTag(
        (String? text, Map<String?, String?> attrs) {
          final String link = attrs['href'] ?? '';
          launch(link);
        },
        style: mainStyle,
      )
    },
    textAlign: TextAlign.left,
    style: mainStyle.copyWith(fontStyle: FontStyle.italic,)
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 32.0),
          child: text
        ),
        Expanded(child: PDFWidget(path: path))
      ],
    );
  }
}