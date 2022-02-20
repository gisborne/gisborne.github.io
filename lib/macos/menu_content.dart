import 'package:flutter/material.dart';
import 'package:resume/macos/presentations.dart';
import 'package:resume/macos/resume.dart';
import 'package:tuple/tuple.dart';

import 'design.dart';

const List<Info> config = [
  Info(
    Icons.person,
    'Resume',
    ResumePage()
  ),
  Info(
    Icons.video_camera_front_outlined,
    'Writing and Presentations',
    Presentations()
  ),
  Info(
    Icons.design_services,
    'Thoughts on Software Design',
    Design()
  ),
];

class Info extends Tuple3<IconData, String, Widget>{
  const Info(IconData a, String b, Widget c):
        super(a, b, c);
}