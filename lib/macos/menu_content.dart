import 'package:flutter/material.dart';
import 'package:resume/macos/presentations.dart';
import 'package:resume/macos/resume.dart';
import 'package:tuple/tuple.dart';

import 'design.dart';

List<MenuInfo> config = [
  MenuInfo(
    Icons.person,
    'Resume',
    ResumePage()
  ),
  MenuInfo(
    Icons.video_camera_front_outlined,
    'Writing and Presentations',
    Presentations()
  ),
  MenuInfo(
    Icons.design_services,
    'Thoughts on Software Design',
    Design()
  ),
];

class MenuInfo extends Tuple3<IconData, String, Widget>{
  const MenuInfo(IconData a, String b, Widget c):
        super(a, b, c);
}