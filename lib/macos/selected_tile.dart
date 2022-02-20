import 'package:flutter/cupertino.dart';

import 'menu_tile.dart';

class SelectedTile extends StatefulWidget {
  final Widget tile;

  SelectedTile({
      required
    this.tile,
    Key? key
  }): super(key: key);

  @override
  State<StatefulWidget> createState() => _SelectedTileState();
}

class _SelectedTileState extends State<SelectedTile>{
  double padding = 0.0;
  void _updatePadding(double value) => setState((){padding = value;});

  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
        padding: EdgeInsets.all(padding),
        duration: const Duration(milliseconds: 200),
        curve: Curves.decelerate,
        child: widget.tile
    );
  }}

