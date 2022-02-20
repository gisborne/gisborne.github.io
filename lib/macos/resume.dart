import 'package:pdfx/pdfx.dart';
import 'package:flutter/cupertino.dart';

class ResumePage extends StatelessWidget {
  final pdfPinchController = PdfControllerPinch(
    document: PdfDocument.openAsset('assets/resume.pdf'),
  );

  @override
  Widget build(BuildContext context) {
      return PdfViewPinch(controller: pdfPinchController);
  }
}