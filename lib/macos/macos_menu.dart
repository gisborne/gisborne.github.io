import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:resume/macos/menu_tile.dart';
import 'package:resume/macos/presentations.dart';
import 'package:resume/macos/resume.dart';

import '../shared/menu.dart';
import 'design.dart';

class MacOSMenu extends Menu {
  final void Function(Widget) selected;
  late final List<MenuTile> children;

  MacOSMenu({
    Key? key,
      required
    this.selected
  }):
    children = [
      MenuTile(
        leading: const Icon(
            Icons.person,
            size: 32,
            semanticLabel: 'Guyren''s Resume'
        ),
        title_text: 'Resume',
        page: ResumePage(),
        tapped: (){
          selected(ResumePage());
        },
      ),
      MenuTile(
          leading: const Icon(
              Icons.video_camera_front_outlined,
              size: 32,
              semanticLabel: 'Guyren''s Writing and Presentations'
          ),
          title_text: 'Writing/Presentations',
          page: Presentations(),
        tapped: (){
          selected(ResumePage());
        },
      ),
      MenuTile(
          leading: const Icon(
              Icons.design_services,
              size: 32,
              semanticLabel: 'Guyren''s Thoughts on Software Design'
          ),
          title_text: 'Design',
          page: Design(),
        tapped: (){
          selected(ResumePage());
        },
      )
    ],
  super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: EdgeInsets.zero,
        children: children
    );
  }

  @override
  Widget get initialView => children.first.page;

}