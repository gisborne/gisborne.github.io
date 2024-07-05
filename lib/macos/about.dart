import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/macos/simple_styled_text.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SimpleStyledText('''A digital Resume for Guyren G Howe.
            
I made this because I saw the Flutter team was hiring, and I would be great for a role there, and this seemed like a good approach :-).
            
Also as an exercise and as a change from the humdrum Word resume.
            
If your team needs of a web/database person who can become a Flutter expert, get in touch.

Tested on MacOS, iOS and Web. Should work on all platforms.

<link href="https://github.com/gisborne/resume">github.com/gisborne/resume</link>
<link href="mailto:guyren@relevantlogic.com>guyren@relevantlogic.com</link>'''),
          ],
        ),
      ),
    );
  }

}