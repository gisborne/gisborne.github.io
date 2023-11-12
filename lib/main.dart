import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/shared/licenses.dart';
import 'package:resume/shared/root.dart';
import 'package:resume/web/iframe.dart';

void main() {
  Root.renderer = _render;

  gatherLicenses();

  runApp(const MyApp());
}

final scaffoldKey = GlobalKey<ScaffoldState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Guyren Howe Résumé',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      textTheme: GoogleFonts.peddanaTextTheme(
        Theme.of(context).textTheme.copyWith(
          bodySmall: GoogleFonts.peddana(
            fontSize: 32,
            height: 1.5,
          ),
        ),
      ),
    ),
    home: Scaffold(
      key: scaffoldKey,
        body: DefaultTextHeightBehavior(
          textHeightBehavior: const TextHeightBehavior(),
          child: Root()
        )
    ),
  );
}

Widget _render({required String path})
  => Iframe(path: path);