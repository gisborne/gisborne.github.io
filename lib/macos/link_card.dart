import 'package:enough_platform_widgets/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkCard extends StatelessWidget {
  final Widget image;
  final String text;
  final String url;

  LinkCard({
    Key? key,
      required
    String image_name,
      required
    String this.text,
      required
    String this.url
  }):
      image = Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.6),
                spreadRadius: 3,
                offset: Offset(2, 2), // changes position of shadow
              ),
            ],
          )
,          child: Image(image: AssetImage(image_name))
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
            padding: EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 32.0),
            child: Text(
              text,
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontStyle: FontStyle.italic,
                fontSize: 24,
                height: 1,
              )
            ),
          ),
        ]
      );
  }
}