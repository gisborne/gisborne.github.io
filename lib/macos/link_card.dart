import 'package:enough_platform_widgets/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkCard extends StatelessWidget {
  final Widget image;
  final String text;
  final String url;

  LinkCard({
    Key? key,
      required
    String imageName,
      required
    this.text,
      required
    this.url
  }):
      image = Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.6),
              spreadRadius: 3,
              offset: const Offset(2, 2), // changes position of shadow
            ),
          ],
        )
,       child: Image(image: AssetImage(imageName))
      );
  
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CupertinoInkWell(
            child: MouseRegion(
              child: image,
              cursor: SystemMouseCursors.click
            ),
            onTap: () => launch(url),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 32.0, 32.0),
            child: Text(
              text,
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontStyle: FontStyle.italic,
                fontSize: 16,
                height: 1,
              )
            ),
          ),
        ]
      );
  }
}