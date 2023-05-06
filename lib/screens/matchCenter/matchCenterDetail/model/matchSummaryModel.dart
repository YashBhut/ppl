class MatchSummary {
  List<dynamic> Matchsummary;

  MatchSummary({
    required this.Matchsummary,
  });

  factory MatchSummary.fromjson(Map<String, dynamic> json) => MatchSummary(
      Matchsummary: json['Matchsummary']
          .map((e) => Matchsummarydata.fromJson(e))
          .toList());

  Map<String, dynamic> toJson() => {
        'Matchsummary': Matchsummary.map((e) => e.toJson()).toList(),
      };
}

class Matchsummarydata {
  String? inning1;
  String? inning2;
  String? matchDate;
  String? matchTime;
  String? firstBattingTeamName;
  String? secondBattingTeamName;
  String? groundName;
  String? comments;
  String? city;
  String? homeTeamLogo;
  String? awayTeamLogo;
  String? s1FallScore;
  String? s1FallWickets;
  String? s1FallOvers;
  String? s2FallScore;
  String? s2FallWickets;
  String? s2FallOvers;

  Matchsummarydata({
    this.inning1,
    this.inning2,
    this.matchDate,
    this.matchTime,
    this.groundName,
    this.city,
    this.comments,
    this.homeTeamLogo,
    this.awayTeamLogo,
    this.s1FallScore,
    this.s1FallWickets,
    this.s1FallOvers,
    this.s2FallScore,
    this.s2FallWickets,
    this.s2FallOvers,
  });

  Matchsummarydata.fromJson(Map<String, dynamic> json) {
    inning1 = json['Inning1'];
    inning2 = json['Inning2'];
    matchDate = json['MatchDate'];
    matchTime = json['MatchTime'];
    firstBattingTeamName = json['FirstBattingTeamName'];
    secondBattingTeamName = json['SecondBattingTeamName'];
    groundName = json['GroundName'];
    city = json['city'];
    comments = json['Comments'];
    homeTeamLogo = json['HomeTeamLogo'];
    awayTeamLogo = json['AwayTeamLogo'];
    s1FallScore = json['1FallScore'];
    s1FallWickets = json['1FallWickets'];
    s1FallOvers = json['1FallOvers'];
    s2FallScore = json['2FallScore'];
    s2FallWickets = json['2FallWickets'];
    s2FallOvers = json['2FallOvers'];
  }

  Map<String, dynamic> toJson() => {
    'Inning1' : inning1,
    'Inning2' : inning2,
    'MatchDate' : matchDate,
    'MatchTime' : matchTime,
    'FirstBattingTeamName' : firstBattingTeamName,
    'SecondBattingTeamName' : secondBattingTeamName,
    'GroundName' : groundName,
    'city' : city,
    'Comments' : comments,
    'HomeTeamLogo' : homeTeamLogo,
    'AwayTeamLogo' : awayTeamLogo,
    '1FallScore' : s1FallScore,
    '1FallWickets' : s1FallWickets,
    '1FallOvers' : s1FallOvers,
    '2FallScore' : s2FallScore,
    '2FallWickets' : s2FallWickets,
    '2FallOvers' : s2FallOvers,
  };
}
