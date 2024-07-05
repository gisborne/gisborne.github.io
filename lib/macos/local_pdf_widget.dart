import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdfx/pdfx.dart';
import 'package:resume/macos/show_notice.dart';

class LocalPDFWidget extends StatelessWidget {
  final String path;
  final Future<PdfDocument>_page;

  LocalPDFWidget({
      required
    this.path,
    Key? key
  }):
      _page = PdfDocument.openAsset(path),
      super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
        children: <Widget>[
          PdfViewPinch(controller: PdfControllerPinch(document: _page)),
          _DownloadControl(path),
      ]
    );
  }
}

class _DownloadControl extends StatelessWidget {
  final String path;
  const _DownloadControl(this.path, [Key? key]):
      super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        onPressed: () => download(context),
        child: const Icon(
            Icons.download,
            size: 32,
          color: Colors.black26)
    );
  }

  void download(BuildContext context) {
    FilePicker.platform.saveFile(
      dialogTitle: 'Please select a location for the resume:',
      fileName: 'guyren-howe-resume.pdf',
      allowedExtensions: ['pdf']
    ).then((d) async {
      if (d != null) {
      final data = await rootBundle.load(path);

      File(d)
        .writeAsBytes(data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes))
        .then((f){
          showNotice(context: context, title: 'File saved');
        })
        .onError((error, stackTrace){
          showNotice(context: context, title: 'Error when saving', content: error.toString());
        });
    }});
  }
}