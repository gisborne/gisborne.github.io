import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/macos/local_pdf_widget.dart';
import 'package:resume/shared/licenses.dart';
import 'package:resume/shared/root.dart';

void main() {
  gatherLicenses();

  Root.renderer = _render;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(

    title: 'Guyren Howe Résumé',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      textTheme: GoogleFonts.loraTextTheme(),
    ),
    home: Root(),
  );
}

Widget _render({required String path}) => LocalPDFWidget(path: path);
