import 'package:flutter/material.dart';
import 'package:resume/macos/link_card.dart';

class LinkCardList extends StatelessWidget {
  final List<LinkCard> rows;
  final ScrollController _scrollController = ScrollController();

  LinkCardList({
      required
    config,
    Key? key,
  }):
      rows = config.map<LinkCard>((c){
        return LinkCard(
          imageName: c.item1,
          text: c.item2,
          url: c.item3,
        );
      }).toList(),
      super(key: key);

  @override
  Widget build(BuildContext context) =>
    Scrollbar(
      isAlwaysShown: true,
      controller: _scrollController,
      child: ListView.builder(
        padding: const EdgeInsets.all(32.0),
        controller: _scrollController,
        itemCount: rows.length,
        itemBuilder: (context, index) => rows[index],
      )
    );
}

