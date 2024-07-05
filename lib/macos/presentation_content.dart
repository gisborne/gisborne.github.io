import 'package:tuple/tuple.dart';

const List<PresentationInfo> config = [
  PresentationInfo(
    'assets/keyword_args_presentation.png',
    'When I gave this presentation at RubyConf 2016, keyword arguments were not used much in APIs, at least in the Ruby world. I like to think I had a part in changing that. Matz, the creator of Ruby, told me he liked the presentation.',
    'https://www.youtube.com/watch?v=4e-_bbFjPRg&ab_channel=Confreaks',
  ),
  PresentationInfo(
    'assets/lydb_presentation.png',
    'I believe the intentions of the relational model are widely misunderstood. And also that most folks don’t get anything like the most out of Postgres. Given at RailsConf 2017.',
    'https://www.slideshare.net/gisborne/love-your-database-railsconf-2017'
  ),
  PresentationInfo(
    'assets/cyc.png',
    'I worked for a time on database integration for an unusual AI technology called Cyc. This was an introduction to Cyc for a local user group.',
    'https://archive.org/details/podcast_sd-ruby-podcast_episode-076-opencyc_1000121284409',
  ),
  PresentationInfo(
    'assets/postgres-types.png',
    "Postgres’s deep type system is greatly underused. This talk was given at PostgresConf 2024.",
    'https://postgresconf.org/conferences/2024/program/proposals/postgres-s-type-system'
  )
];

class PresentationInfo extends Tuple3<String, String, String> {
  const PresentationInfo(String a, String b, String c):
        super(a, b, c);
}