import 'package:flutter/material.dart';
import 'package:resume/shared/stretch_text.dart';

import 'design_content.dart';

class Design extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  static final _rows = config.map(
    (idea) => StretchText(
        shortSource: idea.item1,
        longSource: idea.item2
    )
  ).toList();

  @override

    Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      controller: _scrollController,
      child: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        controller: _scrollController,
        itemCount: _rows.length,
        itemBuilder: (context, index) => _rows[index],
      )
  );
  }

}