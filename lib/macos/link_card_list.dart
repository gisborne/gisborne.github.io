import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/macos/link_card.dart';

class LinkCardList extends StatelessWidget {
  final List<LinkCard> rows;

  LinkCardList({
      required
    config,
    Key? key,
  }):
      rows = config.map<LinkCard>((c){
        return LinkCard(
          image_name: c.item1,
          text: c.item2,
          url: c.item3,
        );
      }).toList(),
      super(key: key);

  final ScrollController _scrollController = ScrollController();


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

