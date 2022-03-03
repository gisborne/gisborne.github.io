import 'package:flutter/cupertino.dart';
import 'package:resume/macos/presentation_content.dart';

import 'link_card_list.dart';

class Presentations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LinkCardList(config: config);
  }
}