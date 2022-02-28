import 'package:tuple/tuple.dart';

List<PresentationInfo> config = [
  PresentationInfo(
      'assets/keyword_args_presentation.png',
      'Blah blah'
  ),
  PresentationInfo(
      'assets/lydb_presentation.png',
      'More blah blah'
  ),
];

class PresentationInfo extends Tuple2<String, String> {
  const PresentationInfo(String a, String b):
        super(a, b);
}