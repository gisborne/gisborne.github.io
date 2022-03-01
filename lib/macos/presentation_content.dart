import 'package:tuple/tuple.dart';

List<PresentationInfo> config = [
  PresentationInfo(
    'assets/keyword_args_presentation.png',
    'When I gave this presentation, keyword arguments were not used much in APIs, at least in the Ruby world. I like to think I had a part in changing that. Matz, the creator of Ruby, told me he liked the presentation.',
    'https://www.youtube.com/watch?v=4e-_bbFjPRg&ab_channel=Confreaks',
  ),
  PresentationInfo(
    'assets/lydb_presentation.png',
    'I believe the intentions of the relational model is generally misunderstood. And also that most folks don''t get anything like the most out of Postgres.',
    'https://www.slideshare.net/gisborne/love-your-database-railsconf-2017'
  ),
];

class PresentationInfo extends Tuple3<String, String, String> {
  const PresentationInfo(String a, String b, String c):
        super(a, b, c);
}