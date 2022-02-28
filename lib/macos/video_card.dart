import 'package:flutter/cupertino.dart';

class VideoCard extends StatelessWidget {
  final Image image;
  final Text text;

  VideoCard({
  Key? key,
    required
  String image_name,
    required
  String text
  }):
      text = Text(
          text,
      style: const TextStyle(fontStyle: FontStyle.italic)),
      image = Image(image: AssetImage(image_name));
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        image,
        text]
    );
  }

}