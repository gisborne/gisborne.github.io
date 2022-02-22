import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';
import 'package:flutter/cupertino.dart';

class ResumePage extends StatelessWidget {
  static final _page = PdfDocument.openAsset('assets/resume.pdf');


  @override
  Widget build(BuildContext context) {
      return Stack(
        alignment: Alignment(1.0, -1.0),
          children: <Widget>[
            PdfViewPinch(controller: PdfControllerPinch(document: _page)),
            _DownloadControl('assets/resume.pdf'),
        ]
    );
  }
}

class _DownloadControl extends StatelessWidget {
  final String path;
  _DownloadControl(this.path, [Key? key]):
      super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        onPressed: download,
        child: Icon(
            Icons.download,
            size: 32,
          color: Colors.black26)
    );
  }

  void download() {
    var result = FilePicker.platform.pickFiles(allowMultiple: true);
    result.then((f){

    });
  }
}