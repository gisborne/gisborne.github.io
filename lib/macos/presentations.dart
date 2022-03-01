import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/macos/presentation_content.dart';
import 'package:resume/macos/video_card.dart';

class Presentations extends StatelessWidget {
  Presentations([Key? key]): super(key: key);

  final ScrollController _scrollController = ScrollController();
  final List<VideoCard> rows =
    config.map((c){
      return VideoCard(
        image_name: c.item1,
        text: c.item2,
        url: c.item3,
      );
    }).toList();

  @override
  Widget build(BuildContext context) =>
    Scrollbar(
      isAlwaysShown: true,
      controller: _scrollController,
      child: ListView.builder(
        padding: EdgeInsets.all(32.0),
        controller: _scrollController,
        itemCount: rows.length,
        itemBuilder: (context, index) => rows[index],
      )
    );
}

