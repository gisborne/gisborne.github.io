import 'package:flutter/material.dart';

import '../web/iframe.dart';
import 'simple_styled_text.dart';

class FrestBlog extends StatelessWidget {
  const FrestBlog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SimpleStyledText('My blog. I write about my research on how to make better APIs and user interfaces. APIs: relational & functional; UIs: same.'),
        Expanded(
        child: Iframe(
          path: 'https://frest.substack.com/embed',
        ),
        ),
      ],
    );
  }
}
