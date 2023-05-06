import 'package:flutter/material.dart';
import 'package:ppl/screens/matchCenter/matchCenterDetail/model/matchSummaryModel.dart';

class InningsData extends StatefulWidget {
  const InningsData(int index, matchsummary, {super.key});

  @override
  State<InningsData> createState() => _InningsDataState();
}

class _InningsDataState extends State<InningsData> {

  MatchSummary? matchsummary;

  // getMatchSummary() async {
  //   var apiService = ApiService();

  //   try {
  //     final matchsummary = await apiService.getMatchSummary();

  //     setState(() {
  //       _matchsummary = matchsummary;

  //       print(
  //           'awayTeamLogo:::::::${_matchsummary!.Matchsummary[0].homeTeamLogo.toString()}');
  //     });
  //   } catch (e) {
  //     setState(() {
  //       _matchsummary = null;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    print(matchsummary!.Matchsummary.length);
    return Scaffold(
      backgroundColor: Colors.blueAccent.shade100,
      body: 
      matchsummary!.Matchsummary.length ==  0 ? Center(child: Text("No Data"),) :
       Column(
        children: [
          Container(
            child: Text((matchsummary!.Matchsummary.length as String) + "  Innig1"),
          ),
        ],
      ),
    );
  }
}
