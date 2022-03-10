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
    return Padding(padding: EdgeInsets.all(12.0), child: tile);
  }
}

