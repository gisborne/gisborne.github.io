import 'package:flutter/cupertino.dart';
import 'package:resume/macos/pdf_widget.dart';

class Resume extends StatelessWidget {
  static const resume_path = 'assets/resume.pdf';
  
  @override
  Widget build(BuildContext context) {
    return PDFWidget(path: resume_path);
  }
}