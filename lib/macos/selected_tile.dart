import 'package:flutter/cupertino.dart';

class SelectedTile extends StatelessWidget {
  final Widget tile;

  const SelectedTile({
      required
    this.tile,
    Key? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.fromLTRB(4.0, 4.0, 0, 0), child: tile);
  }
}

