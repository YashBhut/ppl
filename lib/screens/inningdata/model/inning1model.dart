class inning1model {
  Innings1? innings1;

  inning1model({this.innings1});

  inning1model.fromJson(Map<String, dynamic> json) {
    innings1 = json['Innings1'] != null
        ? new Innings1.fromJson(json['Innings1'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.innings1 != null) {
      data['Innings1'] = this.innings1!.toJson();
    }
    return data;
  }
}

class Innings1 {
  List<BattingCard>? battingCard;
  List<Extras>? extras;
  List<FallOfWickets>? fallOfWickets;
  List<WagonWheel>? wagonWheel;
  List<PartnershipScores>? partnershipScores;
  List<PartnershipBreak>? partnershipBreak;
  List<BowlingCard>? bowlingCard;
  List<ManhattanGraph>? manhattanGraph;
  List<ManhattanWickets>? manhattanWickets;
  List<OverHistory>? overHistory;
  List<WagonWheelSummary>? wagonWheelSummary;
  List<Battingheadtohead>? battingheadtohead;
  List<Bowlingheadtohead>? bowlingheadtohead;

  Innings1(
      {this.battingCard,
      this.extras,
      this.fallOfWickets,
      this.wagonWheel,
      this.partnershipScores,
      this.partnershipBreak,
      this.bowlingCard,
      this.manhattanGraph,
      this.manhattanWickets,
      this.overHistory,
      this.wagonWheelSummary,
      this.battingheadtohead,
      this.bowlingheadtohead});

  Innings1.fromJson(Map<String, dynamic> json) {
    if (json['BattingCard'] != null) {
      battingCard = <BattingCard>[];
      json['BattingCard'].forEach((v) {
        battingCard!.add(new BattingCard.fromJson(v));
      });
    }
    if (json['Extras'] != null) {
      extras = <Extras>[];
      json['Extras'].forEach((v) {
        extras!.add(new Extras.fromJson(v));
      });
    }
    if (json['FallOfWickets'] != null) {
      fallOfWickets = <FallOfWickets>[];
      json['FallOfWickets'].forEach((v) {
        fallOfWickets!.add(new FallOfWickets.fromJson(v));
      });
    }
    if (json['WagonWheel'] != null) {
      wagonWheel = <WagonWheel>[];
      json['WagonWheel'].forEach((v) {
        wagonWheel!.add(new WagonWheel.fromJson(v));
      });
    }
    if (json['PartnershipScores'] != null) {
      partnershipScores = <PartnershipScores>[];
      json['PartnershipScores'].forEach((v) {
        partnershipScores!.add(new PartnershipScores.fromJson(v));
      });
    }
    if (json['PartnershipBreak'] != null) {
      partnershipBreak = <PartnershipBreak>[];
      json['PartnershipBreak'].forEach((v) {
        partnershipBreak!.add(new PartnershipBreak.fromJson(v));
      });
    }
    if (json['BowlingCard'] != null) {
      bowlingCard = <BowlingCard>[];
      json['BowlingCard'].forEach((v) {
        bowlingCard!.add(new BowlingCard.fromJson(v));
      });
    }
    if (json['ManhattanGraph'] != null) {
      manhattanGraph = <ManhattanGraph>[];
      json['ManhattanGraph'].forEach((v) {
        manhattanGraph!.add(new ManhattanGraph.fromJson(v));
      });
    }
    if (json['ManhattanWickets'] != null) {
      manhattanWickets = <ManhattanWickets>[];
      json['ManhattanWickets'].forEach((v) {
        manhattanWickets!.add(new ManhattanWickets.fromJson(v));
      });
    }
    if (json['OverHistory'] != null) {
      overHistory = <OverHistory>[];
      json['OverHistory'].forEach((v) {
        overHistory!.add(new OverHistory.fromJson(v));
      });
    }
    if (json['WagonWheelSummary'] != null) {
      wagonWheelSummary = <WagonWheelSummary>[];
      json['WagonWheelSummary'].forEach((v) {
        wagonWheelSummary!.add(new WagonWheelSummary.fromJson(v));
      });
    }
    if (json['battingheadtohead'] != null) {
      battingheadtohead = <Battingheadtohead>[];
      json['battingheadtohead'].forEach((v) {
        battingheadtohead!.add(new Battingheadtohead.fromJson(v));
      });
    }
    if (json['bowlingheadtohead'] != null) {
      bowlingheadtohead = <Bowlingheadtohead>[];
      json['bowlingheadtohead'].forEach((v) {
        bowlingheadtohead!.add(new Bowlingheadtohead.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.battingCard != null) {
      data['BattingCard'] = this.battingCard!.map((v) => v.toJson()).toList();
    }
    if (this.extras != null) {
      data['Extras'] = this.extras!.map((v) => v.toJson()).toList();
    }
    if (this.fallOfWickets != null) {
      data['FallOfWickets'] =
          this.fallOfWickets!.map((v) => v.toJson()).toList();
    }
    if (this.wagonWheel != null) {
      data['WagonWheel'] = this.wagonWheel!.map((v) => v.toJson()).toList();
    }
    if (this.partnershipScores != null) {
      data['PartnershipScores'] =
          this.partnershipScores!.map((v) => v.toJson()).toList();
    }
    if (this.partnershipBreak != null) {
      data['PartnershipBreak'] =
          this.partnershipBreak!.map((v) => v.toJson()).toList();
    }
    if (this.bowlingCard != null) {
      data['BowlingCard'] = this.bowlingCard!.map((v) => v.toJson()).toList();
    }
    if (this.manhattanGraph != null) {
      data['ManhattanGraph'] =
          this.manhattanGraph!.map((v) => v.toJson()).toList();
    }
    if (this.manhattanWickets != null) {
      data['ManhattanWickets'] =
          this.manhattanWickets!.map((v) => v.toJson()).toList();
    }
    if (this.overHistory != null) {
      data['OverHistory'] = this.overHistory!.map((v) => v.toJson()).toList();
    }
    if (this.wagonWheelSummary != null) {
      data['WagonWheelSummary'] =
          this.wagonWheelSummary!.map((v) => v.toJson()).toList();
    }
    if (this.battingheadtohead != null) {
      data['battingheadtohead'] =
          this.battingheadtohead!.map((v) => v.toJson()).toList();
    }
    if (this.bowlingheadtohead != null) {
      data['bowlingheadtohead'] =
          this.bowlingheadtohead!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BattingCard {
  int? matchID;
  int? inningsNo;
  int? teamID;
  String? playerID;
  String? playerName;
  String? playerImage;
  int? playingOrder;
  String? bowlerName;
  String? outDesc;
  int? runs;
  int? balls;
  int? dotBalls;
  String? dotBallPercentage;
  String? dotBallFrequency;
  int? ones;
  int? twos;
  int? threes;
  int? fours;
  int? sixes;
  String? boundaryPercentage;
  String? boundaryFrequency;
  String? strikeRate;
  int? minOver;
  int? minStrikerOver;
  int? wicketNo;
  int? againstFast;
  int? againstSpin;
  String? againstFastPercent;
  String? againstSpinPercent;

  BattingCard(
      {this.matchID,
      this.inningsNo,
      this.teamID,
      this.playerID,
      this.playerName,
      this.playerImage,
      this.playingOrder,
      this.bowlerName,
      this.outDesc,
      this.runs,
      this.balls,
      this.dotBalls,
      this.dotBallPercentage,
      this.dotBallFrequency,
      this.ones,
      this.twos,
      this.threes,
      this.fours,
      this.sixes,
      this.boundaryPercentage,
      this.boundaryFrequency,
      this.strikeRate,
      this.minOver,
      this.minStrikerOver,
      this.wicketNo,
      this.againstFast,
      this.againstSpin,
      this.againstFastPercent,
      this.againstSpinPercent});

  BattingCard.fromJson(Map<String, dynamic> json) {
    matchID = json['MatchID'];
    inningsNo = json['InningsNo'];
    teamID = json['TeamID'];
    playerID = json['PlayerID'];
    playerName = json['PlayerName'];
    playerImage = json['PlayerImage'];
    playingOrder = json['PlayingOrder'];
    bowlerName = json['BowlerName'];
    outDesc = json['OutDesc'];
    runs = json['Runs'];
    balls = json['Balls'];
    dotBalls = json['DotBalls'];
    dotBallPercentage = json['DotBallPercentage'];
    dotBallFrequency = json['DotBallFrequency'];
    ones = json['Ones'];
    twos = json['Twos'];
    threes = json['Threes'];
    fours = json['Fours'];
    sixes = json['Sixes'];
    boundaryPercentage = json['BoundaryPercentage'];
    boundaryFrequency = json['BoundaryFrequency'];
    strikeRate = json['StrikeRate'];
    minOver = json['MinOver'];
    minStrikerOver = json['MinStrikerOver'];
    wicketNo = json['WicketNo'];
    againstFast = json['AgainstFast'];
    againstSpin = json['AgainstSpin'];
    againstFastPercent = json['AgainstFastPercent'];
    againstSpinPercent = json['AgainstSpinPercent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['MatchID'] = this.matchID;
    data['InningsNo'] = this.inningsNo;
    data['TeamID'] = this.teamID;
    data['PlayerID'] = this.playerID;
    data['PlayerName'] = this.playerName;
    data['PlayerImage'] = this.playerImage;
    data['PlayingOrder'] = this.playingOrder;
    data['BowlerName'] = this.bowlerName;
    data['OutDesc'] = this.outDesc;
    data['Runs'] = this.runs;
    data['Balls'] = this.balls;
    data['DotBalls'] = this.dotBalls;
    data['DotBallPercentage'] = this.dotBallPercentage;
    data['DotBallFrequency'] = this.dotBallFrequency;
    data['Ones'] = this.ones;
    data['Twos'] = this.twos;
    data['Threes'] = this.threes;
    data['Fours'] = this.fours;
    data['Sixes'] = this.sixes;
    data['BoundaryPercentage'] = this.boundaryPercentage;
    data['BoundaryFrequency'] = this.boundaryFrequency;
    data['StrikeRate'] = this.strikeRate;
    data['MinOver'] = this.minOver;
    data['MinStrikerOver'] = this.minStrikerOver;
    data['WicketNo'] = this.wicketNo;
    data['AgainstFast'] = this.againstFast;
    data['AgainstSpin'] = this.againstSpin;
    data['AgainstFastPercent'] = this.againstFastPercent;
    data['AgainstSpinPercent'] = this.againstSpinPercent;
    return data;
  }
}

class Extras {
  String? matchID;
  int? inningsNo;
  String? teamID;
  String? total;
  String? totalExtras;
  String? byes;
  String? legByes;
  String? noBalls;
  String? wides;
  String? penalty;
  String? currentRunRate;
  String? fallScore;
  String? fallWickets;
  String? fallOvers;
  String? battingTeamName;
  String? bowlingTeamName;
  int? maxPartnerShipRuns;

  Extras(
      {this.matchID,
      this.inningsNo,
      this.teamID,
      this.total,
      this.totalExtras,
      this.byes,
      this.legByes,
      this.noBalls,
      this.wides,
      this.penalty,
      this.currentRunRate,
      this.fallScore,
      this.fallWickets,
      this.fallOvers,
      this.battingTeamName,
      this.bowlingTeamName,
      this.maxPartnerShipRuns});

  Extras.fromJson(Map<String, dynamic> json) {
    matchID = json['MatchID'];
    inningsNo = json['InningsNo'];
    teamID = json['TeamID'];
    total = json['Total'];
    totalExtras = json['TotalExtras'];
    byes = json['Byes'];
    legByes = json['LegByes'];
    noBalls = json['NoBalls'];
    wides = json['Wides'];
    penalty = json['Penalty'];
    currentRunRate = json['CurrentRunRate'];
    fallScore = json['FallScore'];
    fallWickets = json['FallWickets'];
    fallOvers = json['FallOvers'];
    battingTeamName = json['BattingTeamName'];
    bowlingTeamName = json['BowlingTeamName'];
    maxPartnerShipRuns = json['MaxPartnerShipRuns'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['MatchID'] = this.matchID;
    data['InningsNo'] = this.inningsNo;
    data['TeamID'] = this.teamID;
    data['Total'] = this.total;
    data['TotalExtras'] = this.totalExtras;
    data['Byes'] = this.byes;
    data['LegByes'] = this.legByes;
    data['NoBalls'] = this.noBalls;
    data['Wides'] = this.wides;
    data['Penalty'] = this.penalty;
    data['CurrentRunRate'] = this.currentRunRate;
    data['FallScore'] = this.fallScore;
    data['FallWickets'] = this.fallWickets;
    data['FallOvers'] = this.fallOvers;
    data['BattingTeamName'] = this.battingTeamName;
    data['BowlingTeamName'] = this.bowlingTeamName;
    data['MaxPartnerShipRuns'] = this.maxPartnerShipRuns;
    return data;
  }
}

class FallOfWickets {
  String? matchID;
  int? inningsNo;
  String? teamID;
  String? playerID;
  String? playerName;
  String? score;
  String? fallScore;
  int? fallWickets;
  String? fallOvers;

  FallOfWickets(
      {this.matchID,
      this.inningsNo,
      this.teamID,
      this.playerID,
      this.playerName,
      this.score,
      this.fallScore,
      this.fallWickets,
      this.fallOvers});

  FallOfWickets.fromJson(Map<String, dynamic> json) {
    matchID = json['MatchID'];
    inningsNo = json['InningsNo'];
    teamID = json['TeamID'];
    playerID = json['PlayerID'];
    playerName = json['PlayerName'];
    score = json['Score'];
    fallScore = json['FallScore'];
    fallWickets = json['FallWickets'];
    fallOvers = json['FallOvers'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['MatchID'] = this.matchID;
    data['InningsNo'] = this.inningsNo;
    data['TeamID'] = this.teamID;
    data['PlayerID'] = this.playerID;
    data['PlayerName'] = this.playerName;
    data['Score'] = this.score;
    data['FallScore'] = this.fallScore;
    data['FallWickets'] = this.fallWickets;
    data['FallOvers'] = this.fallOvers;
    return data;
  }
}

class WagonWheel {
  String? ballID;
  String? strikerID;
  String? bowlerID;
  double? fielderAngle;
  double? fielderLengthRatio;
  int? runs;
  int? isFour;
  int? isSix;
  String? batType;

  WagonWheel(
      {this.ballID,
      this.strikerID,
      this.bowlerID,
      this.fielderAngle,
      this.fielderLengthRatio,
      this.runs,
      this.isFour,
      this.isSix,
      this.batType});

  WagonWheel.fromJson(Map<String, dynamic> json) {
    ballID = json['BallID'];
    strikerID = json['StrikerID'];
    bowlerID = json['BowlerID'];
    fielderAngle = json['FielderAngle'];
    fielderLengthRatio = json['FielderLengthRatio'];
    runs = json['Runs'];
    isFour = json['IsFour'];
    isSix = json['IsSix'];
    batType = json['BatType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['BallID'] = this.ballID;
    data['StrikerID'] = this.strikerID;
    data['BowlerID'] = this.bowlerID;
    data['FielderAngle'] = this.fielderAngle;
    data['FielderLengthRatio'] = this.fielderLengthRatio;
    data['Runs'] = this.runs;
    data['IsFour'] = this.isFour;
    data['IsSix'] = this.isSix;
    data['BatType'] = this.batType;
    return data;
  }
}

class PartnershipScores {
  int? matchID;
  int? battingTeamID;
  int? inningsNo;
  String? strikerID;
  String? striker;
  String? nonStrikerID;
  int? partnershipTotal;
  int? strikerRuns;
  int? strikerBalls;
  int? extras;
  int? nonStrikerRuns;
  int? nonStrikerBalls;
  double? matchMaxOver;
  double? matchMinOver;
  String? nonStriker;

  PartnershipScores(
      {this.matchID,
      this.battingTeamID,
      this.inningsNo,
      this.strikerID,
      this.striker,
      this.nonStrikerID,
      this.partnershipTotal,
      this.strikerRuns,
      this.strikerBalls,
      this.extras,
      this.nonStrikerRuns,
      this.nonStrikerBalls,
      this.matchMaxOver,
      this.matchMinOver,
      this.nonStriker});

  PartnershipScores.fromJson(Map<String, dynamic> json) {
    matchID = json['MatchID'];
    battingTeamID = json['BattingTeamID'];
    inningsNo = json['InningsNo'];
    strikerID = json['StrikerID'];
    striker = json['Striker'];
    nonStrikerID = json['NonStrikerID'];
    partnershipTotal = json['PartnershipTotal'];
    strikerRuns = json['StrikerRuns'];
    strikerBalls = json['StrikerBalls'];
    extras = json['Extras'];
    nonStrikerRuns = json['NonStrikerRuns'];
    nonStrikerBalls = json['NonStrikerBalls'];
    matchMaxOver = json['MatchMaxOver'];
    matchMinOver = json['MatchMinOver'];
    nonStriker = json['NonStriker'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['MatchID'] = this.matchID;
    data['BattingTeamID'] = this.battingTeamID;
    data['InningsNo'] = this.inningsNo;
    data['StrikerID'] = this.strikerID;
    data['Striker'] = this.striker;
    data['NonStrikerID'] = this.nonStrikerID;
    data['PartnershipTotal'] = this.partnershipTotal;
    data['StrikerRuns'] = this.strikerRuns;
    data['StrikerBalls'] = this.strikerBalls;
    data['Extras'] = this.extras;
    data['NonStrikerRuns'] = this.nonStrikerRuns;
    data['NonStrikerBalls'] = this.nonStrikerBalls;
    data['MatchMaxOver'] = this.matchMaxOver;
    data['MatchMinOver'] = this.matchMinOver;
    data['NonStriker'] = this.nonStriker;
    return data;
  }
}

class PartnershipBreak {
  int? inningsNo;
  String? overNo;
  int? wicketNo;
  String? wicketType;
  String? outBatsmanID;

  PartnershipBreak(
      {this.inningsNo,
      this.overNo,
      this.wicketNo,
      this.wicketType,
      this.outBatsmanID});

  PartnershipBreak.fromJson(Map<String, dynamic> json) {
    inningsNo = json['InningsNo'];
    overNo = json['OverNo'];
    wicketNo = json['WicketNo'];
    wicketType = json['WicketType'];
    outBatsmanID = json['OutBatsmanID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['InningsNo'] = this.inningsNo;
    data['OverNo'] = this.overNo;
    data['WicketNo'] = this.wicketNo;
    data['WicketType'] = this.wicketType;
    data['OutBatsmanID'] = this.outBatsmanID;
    return data;
  }
}

class BowlingCard {
  int? matchID;
  int? inningsNo;
  int? teamID;
  String? playerID;
  String? playerName;
  String? playerImageName;
  String? playerImage;
  int? overs;
  int? maidens;
  int? runs;
  int? wickets;
  int? wides;
  int? noBalls;
  double? economy;
  int? bowlingOrder;
  int? totalLegalBallsBowled;
  int? scoringBalls;
  int? dotBalls;
  String? dBPercent;
  String? dBFrequency;
  int? ones;
  int? twos;
  int? threes;
  int? fours;
  int? sixes;
  String? bdryPercent;
  String? bdryFreq;
  String? strikeRate;
  String? fourPercent;
  String? sixPercent;

  BowlingCard(
      {this.matchID,
      this.inningsNo,
      this.teamID,
      this.playerID,
      this.playerName,
      this.playerImageName,
      this.playerImage,
      this.overs,
      this.maidens,
      this.runs,
      this.wickets,
      this.wides,
      this.noBalls,
      this.economy,
      this.bowlingOrder,
      this.totalLegalBallsBowled,
      this.scoringBalls,
      this.dotBalls,
      this.dBPercent,
      this.dBFrequency,
      this.ones,
      this.twos,
      this.threes,
      this.fours,
      this.sixes,
      this.bdryPercent,
      this.bdryFreq,
      this.strikeRate,
      this.fourPercent,
      this.sixPercent});

  BowlingCard.fromJson(Map<String, dynamic> json) {
    matchID = json['MatchID'];
    inningsNo = json['InningsNo'];
    teamID = json['TeamID'];
    playerID = json['PlayerID'];
    playerName = json['PlayerName'];
    playerImageName = json['PlayerImageName'];
    playerImage = json['PlayerImage'];
    overs = json['Overs'];
    maidens = json['Maidens'];
    runs = json['Runs'];
    wickets = json['Wickets'];
    wides = json['Wides'];
    noBalls = json['NoBalls'];
    economy = json['Economy'];
    bowlingOrder = json['BowlingOrder'];
    totalLegalBallsBowled = json['TotalLegalBallsBowled'];
    scoringBalls = json['ScoringBalls'];
    dotBalls = json['DotBalls'];
    dBPercent = json['DBPercent'];
    dBFrequency = json['DBFrequency'];
    ones = json['Ones'];
    twos = json['Twos'];
    threes = json['Threes'];
    fours = json['Fours'];
    sixes = json['Sixes'];
    bdryPercent = json['BdryPercent'];
    bdryFreq = json['BdryFreq'];
    strikeRate = json['StrikeRate'];
    fourPercent = json['FourPercent'];
    sixPercent = json['SixPercent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['MatchID'] = this.matchID;
    data['InningsNo'] = this.inningsNo;
    data['TeamID'] = this.teamID;
    data['PlayerID'] = this.playerID;
    data['PlayerName'] = this.playerName;
    data['PlayerImageName'] = this.playerImageName;
    data['PlayerImage'] = this.playerImage;
    data['Overs'] = this.overs;
    data['Maidens'] = this.maidens;
    data['Runs'] = this.runs;
    data['Wickets'] = this.wickets;
    data['Wides'] = this.wides;
    data['NoBalls'] = this.noBalls;
    data['Economy'] = this.economy;
    data['BowlingOrder'] = this.bowlingOrder;
    data['TotalLegalBallsBowled'] = this.totalLegalBallsBowled;
    data['ScoringBalls'] = this.scoringBalls;
    data['DotBalls'] = this.dotBalls;
    data['DBPercent'] = this.dBPercent;
    data['DBFrequency'] = this.dBFrequency;
    data['Ones'] = this.ones;
    data['Twos'] = this.twos;
    data['Threes'] = this.threes;
    data['Fours'] = this.fours;
    data['Sixes'] = this.sixes;
    data['BdryPercent'] = this.bdryPercent;
    data['BdryFreq'] = this.bdryFreq;
    data['StrikeRate'] = this.strikeRate;
    data['FourPercent'] = this.fourPercent;
    data['SixPercent'] = this.sixPercent;
    return data;
  }
}

class ManhattanGraph {
  int? inningsNo;
  int? overNo;
  int? battingTeamID;
  int? overRuns;
  int? bowlerRuns;
  String? bowlerID;
  int? wickets;
  String? bowler;

  ManhattanGraph(
      {this.inningsNo,
      this.overNo,
      this.battingTeamID,
      this.overRuns,
      this.bowlerRuns,
      this.bowlerID,
      this.wickets,
      this.bowler});

  ManhattanGraph.fromJson(Map<String, dynamic> json) {
    inningsNo = json['InningsNo'];
    overNo = json['OverNo'];
    battingTeamID = json['BattingTeamID'];
    overRuns = json['OverRuns'];
    bowlerRuns = json['BowlerRuns'];
    bowlerID = json['BowlerID'];
    wickets = json['Wickets'];
    bowler = json['Bowler'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['InningsNo'] = this.inningsNo;
    data['OverNo'] = this.overNo;
    data['BattingTeamID'] = this.battingTeamID;
    data['OverRuns'] = this.overRuns;
    data['BowlerRuns'] = this.bowlerRuns;
    data['BowlerID'] = this.bowlerID;
    data['Wickets'] = this.wickets;
    data['Bowler'] = this.bowler;
    return data;
  }
}

class ManhattanWickets {
  int? inningsNo;
  int? overNo;
  int? battingTeamID;
  String? outBatsman;
  String? outDesc;
  int? batsmanRuns;
  int? batsmanBalls;

  ManhattanWickets(
      {this.inningsNo,
      this.overNo,
      this.battingTeamID,
      this.outBatsman,
      this.outDesc,
      this.batsmanRuns,
      this.batsmanBalls});

  ManhattanWickets.fromJson(Map<String, dynamic> json) {
    inningsNo = json['InningsNo'];
    overNo = json['OverNo'];
    battingTeamID = json['BattingTeamID'];
    outBatsman = json['OutBatsman'];
    outDesc = json['OutDesc'];
    batsmanRuns = json['BatsmanRuns'];
    batsmanBalls = json['BatsmanBalls'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['InningsNo'] = this.inningsNo;
    data['OverNo'] = this.overNo;
    data['BattingTeamID'] = this.battingTeamID;
    data['OutBatsman'] = this.outBatsman;
    data['OutDesc'] = this.outDesc;
    data['BatsmanRuns'] = this.batsmanRuns;
    data['BatsmanBalls'] = this.batsmanBalls;
    return data;
  }
}

class OverHistory {
  String? ballID;
  int? matchID;
  int? inningsNo;
  int? battingTeamID;
  String? teamName;
  String? strikerID;
  String? nonStrikerID;
  String? batsManName;
  String? bowlerID;
  String? bowlerName;
  String? bowlerType;
  int? overNo;
  String? overName;
  int? ballNo;
  String? runs;
  String? ballRuns;
  String? runsText;
  int? actualRuns;
  int? isOne;
  int? isTwo;
  int? isThree;
  int? isDotball;
  int? extras;
  int? isWide;
  int? isNoBall;
  int? isBye;
  int? isLegBye;
  int? isFour;
  int? isSix;
  int? isWicket;
  String? wicketType;
  String? wickets;
  String? videoFile;
  String? commentOver;
  String? ballName;
  String? commentStrikers;
  String? commentry;
  int? isExtra;
  String? outBatsManID;
  int? sNO;
  int? runRuns;
  StringBuffer? isMaiden;
  int? ballCount;
  int? pk1COnum;
  int? totalRuns;
  int? totalWickets;

  OverHistory(
      {this.ballID,
      this.matchID,
      this.inningsNo,
      this.battingTeamID,
      this.teamName,
      this.strikerID,
      this.nonStrikerID,
      this.batsManName,
      this.bowlerID,
      this.bowlerName,
      this.bowlerType,
      this.overNo,
      this.overName,
      this.ballNo,
      this.runs,
      this.ballRuns,
      this.runsText,
      this.actualRuns,
      this.isOne,
      this.isTwo,
      this.isThree,
      this.isDotball,
      this.extras,
      this.isWide,
      this.isNoBall,
      this.isBye,
      this.isLegBye,
      this.isFour,
      this.isSix,
      this.isWicket,
      this.wicketType,
      this.wickets,
      this.videoFile,
      this.commentOver,
      this.ballName,
      this.commentStrikers,
      this.commentry,
      this.isExtra,
      this.outBatsManID,
      this.sNO,
      this.runRuns,
      this.isMaiden,
      this.ballCount,
      this.pk1COnum,
      this.totalRuns,
      this.totalWickets});

  OverHistory.fromJson(Map<String, dynamic> json) {
    ballID = json['BallID'];
    matchID = json['MatchID'];
    inningsNo = json['InningsNo'];
    battingTeamID = json['BattingTeamID'];
    teamName = json['TeamName'];
    strikerID = json['StrikerID'];
    nonStrikerID = json['NonStrikerID'];
    batsManName = json['BatsManName'];
    bowlerID = json['BowlerID'];
    bowlerName = json['BowlerName'];
    bowlerType = json['BowlerType'];
    overNo = json['OverNo'];
    overName = json['OverName'];
    ballNo = json['BallNo'];
    runs = json['Runs'];
    ballRuns = json['BallRuns'];
    runsText = json['RunsText'];
    actualRuns = json['ActualRuns'];
    isOne = json['IsOne'];
    isTwo = json['IsTwo'];
    isThree = json['IsThree'];
    isDotball = json['IsDotball'];
    extras = json['Extras'];
    isWide = json['IsWide'];
    isNoBall = json['IsNoBall'];
    isBye = json['IsBye'];
    isLegBye = json['IsLegBye'];
    isFour = json['IsFour'];
    isSix = json['IsSix'];
    isWicket = json['IsWicket'];
    wicketType = json['WicketType'];
    wickets = json['Wickets'];
    videoFile = json['VideoFile'];
    commentOver = json['CommentOver'];
    ballName = json['BallName'];
    commentStrikers = json['CommentStrikers'];
    commentry = json['Commentry'];
    isExtra = json['IsExtra'];
    outBatsManID = json['OutBatsManID'];
    sNO = json['SNO'];
    runRuns = json['RunRuns'];
    isMaiden = json['IsMaiden'];
    ballCount = json['BallCount'];
    pk1COnum = json['@pk1 := C.Onum'];
    totalRuns = json['TotalRuns'];
    totalWickets = json['TotalWickets'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['BallID'] = this.ballID;
    data['MatchID'] = this.matchID;
    data['InningsNo'] = this.inningsNo;
    data['BattingTeamID'] = this.battingTeamID;
    data['TeamName'] = this.teamName;
    data['StrikerID'] = this.strikerID;
    data['NonStrikerID'] = this.nonStrikerID;
    data['BatsManName'] = this.batsManName;
    data['BowlerID'] = this.bowlerID;
    data['BowlerName'] = this.bowlerName;
    data['BowlerType'] = this.bowlerType;
    data['OverNo'] = this.overNo;
    data['OverName'] = this.overName;
    data['BallNo'] = this.ballNo;
    data['Runs'] = this.runs;
    data['BallRuns'] = this.ballRuns;
    data['RunsText'] = this.runsText;
    data['ActualRuns'] = this.actualRuns;
    data['IsOne'] = this.isOne;
    data['IsTwo'] = this.isTwo;
    data['IsThree'] = this.isThree;
    data['IsDotball'] = this.isDotball;
    data['Extras'] = this.extras;
    data['IsWide'] = this.isWide;
    data['IsNoBall'] = this.isNoBall;
    data['IsBye'] = this.isBye;
    data['IsLegBye'] = this.isLegBye;
    data['IsFour'] = this.isFour;
    data['IsSix'] = this.isSix;
    data['IsWicket'] = this.isWicket;
    data['WicketType'] = this.wicketType;
    data['Wickets'] = this.wickets;
    data['VideoFile'] = this.videoFile;
    data['CommentOver'] = this.commentOver;
    data['BallName'] = this.ballName;
    data['CommentStrikers'] = this.commentStrikers;
    data['Commentry'] = this.commentry;
    data['IsExtra'] = this.isExtra;
    data['OutBatsManID'] = this.outBatsManID;
    data['SNO'] = this.sNO;
    data['RunRuns'] = this.runRuns;
    data['IsMaiden'] = this.isMaiden;
    data['BallCount'] = this.ballCount;
    data['@pk1 := C.Onum'] = this.pk1COnum;
    data['TotalRuns'] = this.totalRuns;
    data['TotalWickets'] = this.totalWickets;
    return data;
  }
}

class WagonWheelSummary {
  int? matchID;
  int? battingTeamID;
  int? inningsNo;
  int? ones;
  int? twos;
  int? threes;
  int? fours;
  int? sixes;

  WagonWheelSummary(
      {this.matchID,
      this.battingTeamID,
      this.inningsNo,
      this.ones,
      this.twos,
      this.threes,
      this.fours,
      this.sixes});

  WagonWheelSummary.fromJson(Map<String, dynamic> json) {
    matchID = json['MatchID'];
    battingTeamID = json['BattingTeamID'];
    inningsNo = json['InningsNo'];
    ones = json['Ones'];
    twos = json['Twos'];
    threes = json['Threes'];
    fours = json['Fours'];
    sixes = json['Sixes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['MatchID'] = this.matchID;
    data['BattingTeamID'] = this.battingTeamID;
    data['InningsNo'] = this.inningsNo;
    data['Ones'] = this.ones;
    data['Twos'] = this.twos;
    data['Threes'] = this.threes;
    data['Fours'] = this.fours;
    data['Sixes'] = this.sixes;
    return data;
  }
}

class Battingheadtohead {
  String? kPI;
  String? batsManID;
  String? bowlerID;
  String? batsManName;
  String? bowlerName;
  String? runs;
  String? runsThroughExtras;
  String? totalRuns;
  String? ballsFaced;
  String? strikeRate;
  String? dotBalls;
  String? dBPercent;
  String? dotBallFrequency;
  String? scoringBalls;
  String? ones;
  String? twos;
  String? threes;
  String? fours;
  String? sixes;
  String? bdryFreq;
  String? bdryPercent;
  String? wicketLost;
  String? rPSS;

  Battingheadtohead(
      {this.kPI,
      this.batsManID,
      this.bowlerID,
      this.batsManName,
      this.bowlerName,
      this.runs,
      this.runsThroughExtras,
      this.totalRuns,
      this.ballsFaced,
      this.strikeRate,
      this.dotBalls,
      this.dBPercent,
      this.dotBallFrequency,
      this.scoringBalls,
      this.ones,
      this.twos,
      this.threes,
      this.fours,
      this.sixes,
      this.bdryFreq,
      this.bdryPercent,
      this.wicketLost,
      this.rPSS});

  Battingheadtohead.fromJson(Map<String, dynamic> json) {
    kPI = json['KPI'];
    batsManID = json['BatsManID'];
    bowlerID = json['BowlerID'];
    batsManName = json['BatsManName'];
    bowlerName = json['BowlerName'];
    runs = json['Runs'];
    runsThroughExtras = json['RunsThroughExtras'];
    totalRuns = json['TotalRuns'];
    ballsFaced = json['BallsFaced'];
    strikeRate = json['StrikeRate'];
    dotBalls = json['DotBalls'];
    dBPercent = json['DBPercent'];
    dotBallFrequency = json['DotBallFrequency'];
    scoringBalls = json['ScoringBalls'];
    ones = json['Ones'];
    twos = json['Twos'];
    threes = json['Threes'];
    fours = json['Fours'];
    sixes = json['Sixes'];
    bdryFreq = json['BdryFreq'];
    bdryPercent = json['BdryPercent'];
    wicketLost = json['WicketLost'];
    rPSS = json['RPSS'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['KPI'] = this.kPI;
    data['BatsManID'] = this.batsManID;
    data['BowlerID'] = this.bowlerID;
    data['BatsManName'] = this.batsManName;
    data['BowlerName'] = this.bowlerName;
    data['Runs'] = this.runs;
    data['RunsThroughExtras'] = this.runsThroughExtras;
    data['TotalRuns'] = this.totalRuns;
    data['BallsFaced'] = this.ballsFaced;
    data['StrikeRate'] = this.strikeRate;
    data['DotBalls'] = this.dotBalls;
    data['DBPercent'] = this.dBPercent;
    data['DotBallFrequency'] = this.dotBallFrequency;
    data['ScoringBalls'] = this.scoringBalls;
    data['Ones'] = this.ones;
    data['Twos'] = this.twos;
    data['Threes'] = this.threes;
    data['Fours'] = this.fours;
    data['Sixes'] = this.sixes;
    data['BdryFreq'] = this.bdryFreq;
    data['BdryPercent'] = this.bdryPercent;
    data['WicketLost'] = this.wicketLost;
    data['RPSS'] = this.rPSS;
    return data;
  }
}

class Bowlingheadtohead {
  String? kPI;
  String? matchID;
  String? bowlerID;
  String? bowlerName;
  String? strikerID;
  String? batsManName;
  String? totalRunsConceded;
  String? bowlingAverage;
  String? totalLegalBallsBowled;
  String? bowlingSR;
  String? economyRate;
  String? dotBallsBowled;
  String? scoringBalls;
  String? ones;
  String? twoes;
  String? threes;
  String? bdry4;
  String? bdry6;
  String? wides;
  String? noBalls;
  String? wickets;
  String? runOutsDone;
  String? bowledOutsDone;
  String? stumpingsDone;
  String? bowlingDotBallPercentage;
  String? bowlingDotBallFrequency;
  String? bowlingBdryPercentage;
  String? bowlingBdryFrequency;

  Bowlingheadtohead(
      {this.kPI,
      this.matchID,
      this.bowlerID,
      this.bowlerName,
      this.strikerID,
      this.batsManName,
      this.totalRunsConceded,
      this.bowlingAverage,
      this.totalLegalBallsBowled,
      this.bowlingSR,
      this.economyRate,
      this.dotBallsBowled,
      this.scoringBalls,
      this.ones,
      this.twoes,
      this.threes,
      this.bdry4,
      this.bdry6,
      this.wides,
      this.noBalls,
      this.wickets,
      this.runOutsDone,
      this.bowledOutsDone,
      this.stumpingsDone,
      this.bowlingDotBallPercentage,
      this.bowlingDotBallFrequency,
      this.bowlingBdryPercentage,
      this.bowlingBdryFrequency});

  Bowlingheadtohead.fromJson(Map<String, dynamic> json) {
    kPI = json['KPI'];
    matchID = json['MatchID'];
    bowlerID = json['BowlerID'];
    bowlerName = json['BowlerName'];
    strikerID = json['StrikerID'];
    batsManName = json['BatsManName'];
    totalRunsConceded = json['TotalRunsConceded'];
    bowlingAverage = json['BowlingAverage'];
    totalLegalBallsBowled = json['TotalLegalBallsBowled'];
    bowlingSR = json['BowlingSR'];
    economyRate = json['EconomyRate'];
    dotBallsBowled = json['DotBallsBowled'];
    scoringBalls = json['ScoringBalls'];
    ones = json['Ones'];
    twoes = json['Twoes'];
    threes = json['Threes'];
    bdry4 = json['Bdry4'];
    bdry6 = json['Bdry6'];
    wides = json['Wides'];
    noBalls = json['NoBalls'];
    wickets = json['Wickets'];
    runOutsDone = json['RunOutsDone'];
    bowledOutsDone = json['BowledOutsDone'];
    stumpingsDone = json['StumpingsDone'];
    bowlingDotBallPercentage = json['BowlingDotBallPercentage'];
    bowlingDotBallFrequency = json['BowlingDotBallFrequency'];
    bowlingBdryPercentage = json['BowlingBdryPercentage'];
    bowlingBdryFrequency = json['BowlingBdryFrequency'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['KPI'] = this.kPI;
    data['MatchID'] = this.matchID;
    data['BowlerID'] = this.bowlerID;
    data['BowlerName'] = this.bowlerName;
    data['StrikerID'] = this.strikerID;
    data['BatsManName'] = this.batsManName;
    data['TotalRunsConceded'] = this.totalRunsConceded;
    data['BowlingAverage'] = this.bowlingAverage;
    data['TotalLegalBallsBowled'] = this.totalLegalBallsBowled;
    data['BowlingSR'] = this.bowlingSR;
    data['EconomyRate'] = this.economyRate;
    data['DotBallsBowled'] = this.dotBallsBowled;
    data['ScoringBalls'] = this.scoringBalls;
    data['Ones'] = this.ones;
    data['Twoes'] = this.twoes;
    data['Threes'] = this.threes;
    data['Bdry4'] = this.bdry4;
    data['Bdry6'] = this.bdry6;
    data['Wides'] = this.wides;
    data['NoBalls'] = this.noBalls;
    data['Wickets'] = this.wickets;
    data['RunOutsDone'] = this.runOutsDone;
    data['BowledOutsDone'] = this.bowledOutsDone;
    data['StumpingsDone'] = this.stumpingsDone;
    data['BowlingDotBallPercentage'] = this.bowlingDotBallPercentage;
    data['BowlingDotBallFrequency'] = this.bowlingDotBallFrequency;
    data['BowlingBdryPercentage'] = this.bowlingBdryPercentage;
    data['BowlingBdryFrequency'] = this.bowlingBdryFrequency;
    return data;
  }
}
