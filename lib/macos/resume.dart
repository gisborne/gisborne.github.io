import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:resume/macos/pdf_widget.dart';

class Resume extends StatelessWidget {
  static const resumePath = kIsWeb ? 'https://cdn.statically.io/gh/gisborne/resume/abd0c724/assets/guyren-howe-resume.pdf' : 'assets/guyren-howe-resume.pdf';
  static Widget resumeWidget = PDFWidget(path: resumePath);

  @override
  Widget build(BuildContext context) {
    return resumeWidget;
  }
}