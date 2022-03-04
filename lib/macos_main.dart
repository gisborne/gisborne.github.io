import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/shared/licenses.dart';
import 'package:resume/shared/root.dart';

void main() {
  gatherLicenses();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Guyren Howe Résumé',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      textTheme: GoogleFonts.peddanaTextTheme(),
    ),
    home: Root(),
  );
}
