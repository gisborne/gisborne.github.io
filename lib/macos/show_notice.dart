import 'package:flutter/material.dart';

void show_notice({
    required
  BuildContext context,
    required
  String title,
  String? content,
  String buttonText = 'OK'
}) {
  showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: Text(title),
      content: (content != null) ? Text(content) : null,
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('OK'),
        ),
      ],
    ),
  );
}