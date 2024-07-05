import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:resume/macos/pdf_widget.dart';
import 'package:resume/macos/text_style.dart';
import 'package:styled_text/styled_text.dart';
import 'package:url_launcher/url_launcher.dart';

class Writing extends StatelessWidget {
  static const path = kIsWeb ? 'https://cdn.statically.io/gh/gisborne/resume/3a57157f/assets/guyren-writing-sample.pdf' : 'assets/guyren-writing-sample.pdf';
  static Widget writingWidget = PDFWidget(path: path);

  final text = DefaultTextHeightBehavior(
    textHeightBehavior: const TextHeightBehavior(),
    child: StyledText(
      text: 'I’ve done a variety of technical writing. Here is a chapter from a book I wrote to teach OOP to users of a Visual Basic knock-off called RealBasic (now <link href="https://xojo.com">Xojo</link>.)',
      tags: {
        'link': StyledTextActionTag(
          (String? text, Map<String?, String?> attrs) {
            final String link = attrs['href'] ?? '';
            launchUrl(Uri.parse(link));
          },
          style: mainStyle,
        )
      },
      textAlign: TextAlign.left,
      style: mainStyle.copyWith(fontStyle: FontStyle.italic,)
    ),
  );

  Writing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(32.0, 32.0, 32.0, 32.0),
          child: text
        ),
        Expanded(child: writingWidget)
      ],
    );
  }
}