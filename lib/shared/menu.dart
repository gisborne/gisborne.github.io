import 'package:flutter/cupertino.dart';

abstract class Menu extends StatelessWidget {
  Menu({Key? key}): super(key: key);

  Widget get initialView;
}