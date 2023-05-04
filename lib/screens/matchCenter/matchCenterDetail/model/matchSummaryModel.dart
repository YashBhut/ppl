class cardResponse {
  List<Matchsummary>? matchsummary;

  cardResponse({this.matchsummary});

  cardResponse.fromJson(Map<String, dynamic> json) {
    if (json['Matchsummary'] != null) {
      matchsummary = <Matchsummary>[];
      json['Matchsummary'].forEach((v) {
        matchsummary!.add(new Matchsummary.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.matchsummary != null) {
      data['Matchsummary'] = this.matchsummary!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Matchsummary {
  String? inning1;
  String? inning2;
  String? matchStatus;
  String? matchDate;
  String? matchName;
  String? matchTime;
  int? firstBattingTeamID;
  String? firstBattingTeamName;
  int? secondBattingTeamID;
  String? secondBattingTeamName;
  String? firstBattingTeamCode;
  String? secondBattingTeamCode;
  int? groundID;
  String? groundName;
  String? commentss;
  String? tossTeam;
  String? tossDetails;
  String? tossText;
  int? flag;
  String? firstBattingSummary;
  String? secondBattingSummary;
  String? clientMatchID;
  String? mATCHCOMMENCESTARTDATE;
  String? city;
  String? flickrAlbumID;
  String? liveStream;
  String? fBURL;
  String? t20ProMatchID;
  String? inn1Overs;
  String? inn2Overs;
  Null? matchTypeName;
  Null? rowNo;
  String? comments;
  String? homeTeamLogo;
  String? awayTeamLogo;
  int? videoScorecard;
  String? timeZone;
  String? currentStrikerID;
  String? currentStrikerName;
  int? strikerRuns;
  int? strikerBalls;
  int? strikerFours;
  int? strikerSixes;
  double? strikerSR;
  String? strikerImage;
  String? currentNonStrikerID;
  String? currentNonStrikerName;
  int? nonStrikerRuns;
  int? nonStrikerBalls;
  int? nonStrikerFours;
  int? nonStrikerSixes;
  double? nonStrikerSR;
  String? nonStrikerImage;
  String? currentBowlerID;
  String? currentBowlerName;
  String? bowlerOvers;
  int? bowlerRuns;
  int? bowlerMaidens;
  int? bowlerWickets;
  double? bowlerEconomy;
  double? bowlerSR;
  String? bowlerImage;
  String? chasingText;
  String? matchBreakComments;
  String? currentInnings;
  String? s1Summary;
  String? s1FallScore;
  String? s1FallWickets;
  String? s1FallOvers;
  String? s1RunRate;
  String? s2Summary;
  String? s2FallScore;
  String? s2FallWickets;
  String? s2FallOvers;
  String? s2RunRate;
  String? s3Summary;
  String? s3FallScore;
  String? s3FallWickets;
  String? s3FallOvers;
  String? s3RunRate;
  String? s4Summary;
  String? s4FallScore;
  String? s4FallWickets;
  String? s4FallOvers;
  String? s4RunRate;
  String? divisionID;
  Null? secondInningsFirstBattingID;
  String? secondInningsFirstBattingName;
  Null? secondInningsSecondBattingID;
  String? secondInningsSecondBattingName;
  String? winningTeamID;
  Null? matchOrder;
  String? revisedOver;
  String? revisedTarget;
  Null? matchRow;
  int? remainingBalls;

  Matchsummary(
      {this.inning1,
      this.inning2,
      this.matchStatus,
      this.matchDate,
      this.matchName,
      this.matchTime,
      this.firstBattingTeamID,
      this.firstBattingTeamName,
      this.secondBattingTeamID,
      this.secondBattingTeamName,
      this.firstBattingTeamCode,
      this.secondBattingTeamCode,
      this.groundID,
      this.groundName,
      this.commentss,
      this.tossTeam,
      this.tossDetails,
      this.tossText,
      this.flag,
      this.firstBattingSummary,
      this.secondBattingSummary,
      this.clientMatchID,
      this.mATCHCOMMENCESTARTDATE,
      this.city,
      this.flickrAlbumID,
      this.liveStream,
      this.fBURL,
      this.t20ProMatchID,
      this.inn1Overs,
      this.inn2Overs,
      this.matchTypeName,
      this.rowNo,
      this.comments,
      this.homeTeamLogo,
      this.awayTeamLogo,
      this.videoScorecard,
      this.timeZone,
      this.currentStrikerID,
      this.currentStrikerName,
      this.strikerRuns,
      this.strikerBalls,
      this.strikerFours,
      this.strikerSixes,
      this.strikerSR,
      this.strikerImage,
      this.currentNonStrikerID,
      this.currentNonStrikerName,
      this.nonStrikerRuns,
      this.nonStrikerBalls,
      this.nonStrikerFours,
      this.nonStrikerSixes,
      this.nonStrikerSR,
      this.nonStrikerImage,
      this.currentBowlerID,
      this.currentBowlerName,
      this.bowlerOvers,
      this.bowlerRuns,
      this.bowlerMaidens,
      this.bowlerWickets,
      this.bowlerEconomy,
      this.bowlerSR,
      this.bowlerImage,
      this.chasingText,
      this.matchBreakComments,
      this.currentInnings,
      this.s1Summary,
      this.s1FallScore,
      this.s1FallWickets,
      this.s1FallOvers,
      this.s1RunRate,
      this.s2Summary,
      this.s2FallScore,
      this.s2FallWickets,
      this.s2FallOvers,
      this.s2RunRate,
      this.s3Summary,
      this.s3FallScore,
      this.s3FallWickets,
      this.s3FallOvers,
      this.s3RunRate,
      this.s4Summary,
      this.s4FallScore,
      this.s4FallWickets,
      this.s4FallOvers,
      this.s4RunRate,
      this.divisionID,
      this.secondInningsFirstBattingID,
      this.secondInningsFirstBattingName,
      this.secondInningsSecondBattingID,
      this.secondInningsSecondBattingName,
      this.winningTeamID,
      this.matchOrder,
      this.revisedOver,
      this.revisedTarget,
      this.matchRow,
      this.remainingBalls});

  Matchsummary.fromJson(Map<String, dynamic> json) {
    inning1 = json['Inning1'];
    inning2 = json['Inning2'];
    matchStatus = json['MatchStatus'];
    matchDate = json['MatchDate'];
    matchName = json['MatchName'];
    matchTime = json['MatchTime'];
    firstBattingTeamID = json['FirstBattingTeamID'];
    firstBattingTeamName = json['FirstBattingTeamName'];
    secondBattingTeamID = json['SecondBattingTeamID'];
    secondBattingTeamName = json['SecondBattingTeamName'];
    firstBattingTeamCode = json['FirstBattingTeamCode'];
    secondBattingTeamCode = json['SecondBattingTeamCode'];
    groundID = json['GroundID'];
    groundName = json['GroundName'];
    commentss = json['Commentss'];
    tossTeam = json['TossTeam'];
    tossDetails = json['TossDetails'];
    tossText = json['TossText'];
    flag = json['Flag'];
    firstBattingSummary = json['FirstBattingSummary'];
    secondBattingSummary = json['SecondBattingSummary'];
    clientMatchID = json['ClientMatchID'];
    mATCHCOMMENCESTARTDATE = json['MATCH_COMMENCE_START_DATE'];
    city = json['city'];
    flickrAlbumID = json['FlickrAlbumID'];
    liveStream = json['LiveStream'];
    fBURL = json['FBURL'];
    t20ProMatchID = json['T20ProMatchID'];
    inn1Overs = json['Inn1Overs'];
    inn2Overs = json['Inn2Overs'];
    matchTypeName = json['MatchTypeName'];
    rowNo = json['RowNo'];
    comments = json['Comments'];
    homeTeamLogo = json['HomeTeamLogo'];
    awayTeamLogo = json['AwayTeamLogo'];
    videoScorecard = json['VideoScorecard'];
    timeZone = json['TimeZone'];
    currentStrikerID = json['CurrentStrikerID'];
    currentStrikerName = json['CurrentStrikerName'];
    strikerRuns = json['StrikerRuns'];
    strikerBalls = json['StrikerBalls'];
    strikerFours = json['StrikerFours'];
    strikerSixes = json['StrikerSixes'];
    strikerSR = json['StrikerSR'];
    strikerImage = json['StrikerImage'];
    currentNonStrikerID = json['CurrentNonStrikerID'];
    currentNonStrikerName = json['CurrentNonStrikerName'];
    nonStrikerRuns = json['NonStrikerRuns'];
    nonStrikerBalls = json['NonStrikerBalls'];
    nonStrikerFours = json['NonStrikerFours'];
    nonStrikerSixes = json['NonStrikerSixes'];
    nonStrikerSR = json['NonStrikerSR'];
    nonStrikerImage = json['NonStrikerImage'];
    currentBowlerID = json['CurrentBowlerID'];
    currentBowlerName = json['CurrentBowlerName'];
    bowlerOvers = json['BowlerOvers'];
    bowlerRuns = json['BowlerRuns'];
    bowlerMaidens = json['BowlerMaidens'];
    bowlerWickets = json['BowlerWickets'];
    bowlerEconomy = json['BowlerEconomy'];
    bowlerSR = json['BowlerSR'];
    bowlerImage = json['BowlerImage'];
    chasingText = json['ChasingText'];
    matchBreakComments = json['MatchBreakComments'];
    currentInnings = json['CurrentInnings'];
    s1Summary = json['1Summary'];
    s1FallScore = json['1FallScore'];
    s1FallWickets = json['1FallWickets'];
    s1FallOvers = json['1FallOvers'];
    s1RunRate = json['1RunRate'];
    s2Summary = json['2Summary'];
    s2FallScore = json['2FallScore'];
    s2FallWickets = json['2FallWickets'];
    s2FallOvers = json['2FallOvers'];
    s2RunRate = json['2RunRate'];
    s3Summary = json['3Summary'];
    s3FallScore = json['3FallScore'];
    s3FallWickets = json['3FallWickets'];
    s3FallOvers = json['3FallOvers'];
    s3RunRate = json['3RunRate'];
    s4Summary = json['4Summary'];
    s4FallScore = json['4FallScore'];
    s4FallWickets = json['4FallWickets'];
    s4FallOvers = json['4FallOvers'];
    s4RunRate = json['4RunRate'];
    divisionID = json['DivisionID'];
    secondInningsFirstBattingID = json['SecondInningsFirstBattingID'];
    secondInningsFirstBattingName = json['SecondInningsFirstBattingName'];
    secondInningsSecondBattingID = json['SecondInningsSecondBattingID'];
    secondInningsSecondBattingName = json['SecondInningsSecondBattingName'];
    winningTeamID = json['WinningTeamID'];
    matchOrder = json['MatchOrder'];
    revisedOver = json['RevisedOver'];
    revisedTarget = json['RevisedTarget'];
    matchRow = json['MatchRow'];
    remainingBalls = json['RemainingBalls'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Inning1'] = this.inning1;
    data['Inning2'] = this.inning2;
    data['MatchStatus'] = this.matchStatus;
    data['MatchDate'] = this.matchDate;
    data['MatchName'] = this.matchName;
    data['MatchTime'] = this.matchTime;
    data['FirstBattingTeamID'] = this.firstBattingTeamID;
    data['FirstBattingTeamName'] = this.firstBattingTeamName;
    data['SecondBattingTeamID'] = this.secondBattingTeamID;
    data['SecondBattingTeamName'] = this.secondBattingTeamName;
    data['FirstBattingTeamCode'] = this.firstBattingTeamCode;
    data['SecondBattingTeamCode'] = this.secondBattingTeamCode;
    data['GroundID'] = this.groundID;
    data['GroundName'] = this.groundName;
    data['Commentss'] = this.commentss;
    data['TossTeam'] = this.tossTeam;
    data['TossDetails'] = this.tossDetails;
    data['TossText'] = this.tossText;
    data['Flag'] = this.flag;
    data['FirstBattingSummary'] = this.firstBattingSummary;
    data['SecondBattingSummary'] = this.secondBattingSummary;
    data['ClientMatchID'] = this.clientMatchID;
    data['MATCH_COMMENCE_START_DATE'] = this.mATCHCOMMENCESTARTDATE;
    data['city'] = this.city;
    data['FlickrAlbumID'] = this.flickrAlbumID;
    data['LiveStream'] = this.liveStream;
    data['FBURL'] = this.fBURL;
    data['T20ProMatchID'] = this.t20ProMatchID;
    data['Inn1Overs'] = this.inn1Overs;
    data['Inn2Overs'] = this.inn2Overs;
    data['MatchTypeName'] = this.matchTypeName;
    data['RowNo'] = this.rowNo;
    data['Comments'] = this.comments;
    data['HomeTeamLogo'] = this.homeTeamLogo;
    data['AwayTeamLogo'] = this.awayTeamLogo;
    data['VideoScorecard'] = this.videoScorecard;
    data['TimeZone'] = this.timeZone;
    data['CurrentStrikerID'] = this.currentStrikerID;
    data['CurrentStrikerName'] = this.currentStrikerName;
    data['StrikerRuns'] = this.strikerRuns;
    data['StrikerBalls'] = this.strikerBalls;
    data['StrikerFours'] = this.strikerFours;
    data['StrikerSixes'] = this.strikerSixes;
    data['StrikerSR'] = this.strikerSR;
    data['StrikerImage'] = this.strikerImage;
    data['CurrentNonStrikerID'] = this.currentNonStrikerID;
    data['CurrentNonStrikerName'] = this.currentNonStrikerName;
    data['NonStrikerRuns'] = this.nonStrikerRuns;
    data['NonStrikerBalls'] = this.nonStrikerBalls;
    data['NonStrikerFours'] = this.nonStrikerFours;
    data['NonStrikerSixes'] = this.nonStrikerSixes;
    data['NonStrikerSR'] = this.nonStrikerSR;
    data['NonStrikerImage'] = this.nonStrikerImage;
    data['CurrentBowlerID'] = this.currentBowlerID;
    data['CurrentBowlerName'] = this.currentBowlerName;
    data['BowlerOvers'] = this.bowlerOvers;
    data['BowlerRuns'] = this.bowlerRuns;
    data['BowlerMaidens'] = this.bowlerMaidens;
    data['BowlerWickets'] = this.bowlerWickets;
    data['BowlerEconomy'] = this.bowlerEconomy;
    data['BowlerSR'] = this.bowlerSR;
    data['BowlerImage'] = this.bowlerImage;
    data['ChasingText'] = this.chasingText;
    data['MatchBreakComments'] = this.matchBreakComments;
    data['CurrentInnings'] = this.currentInnings;
    data['1Summary'] = this.s1Summary;
    data['1FallScore'] = this.s1FallScore;
    data['1FallWickets'] = this.s1FallWickets;
    data['1FallOvers'] = this.s1FallOvers;
    data['1RunRate'] = this.s1RunRate;
    data['2Summary'] = this.s2Summary;
    data['2FallScore'] = this.s2FallScore;
    data['2FallWickets'] = this.s2FallWickets;
    data['2FallOvers'] = this.s2FallOvers;
    data['2RunRate'] = this.s2RunRate;
    data['3Summary'] = this.s3Summary;
    data['3FallScore'] = this.s3FallScore;
    data['3FallWickets'] = this.s3FallWickets;
    data['3FallOvers'] = this.s3FallOvers;
    data['3RunRate'] = this.s3RunRate;
    data['4Summary'] = this.s4Summary;
    data['4FallScore'] = this.s4FallScore;
    data['4FallWickets'] = this.s4FallWickets;
    data['4FallOvers'] = this.s4FallOvers;
    data['4RunRate'] = this.s4RunRate;
    data['DivisionID'] = this.divisionID;
    data['SecondInningsFirstBattingID'] = this.secondInningsFirstBattingID;
    data['SecondInningsFirstBattingName'] = this.secondInningsFirstBattingName;
    data['SecondInningsSecondBattingID'] = this.secondInningsSecondBattingID;
    data['SecondInningsSecondBattingName'] =
        this.secondInningsSecondBattingName;
    data['WinningTeamID'] = this.winningTeamID;
    data['MatchOrder'] = this.matchOrder;
    data['RevisedOver'] = this.revisedOver;
    data['RevisedTarget'] = this.revisedTarget;
    data['MatchRow'] = this.matchRow;
    data['RemainingBalls'] = this.remainingBalls;
    return data;
  }
}