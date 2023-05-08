import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ppl/screens/matchCenter/matchCenterDetail/model/matchSummaryModel.dart';

import '../../networkConstant/apiProvider.dart';

class InningsData extends StatefulWidget {
  const InningsData( {super.key});

  @override
  State<InningsData> createState() => _InningsDataState();
}

class _InningsDataState extends State<InningsData> {
  // MatchSummary? matchsummary;
  var inningDatas1;
//  var inning1data;
  getIning1Data() async {
    var apiService = ApiService();

    try {
      final inning1data = await apiService.getIning1Data(urlIn1: "${argu.inning1}");

      setState(() {
           inningDatas1 = inning1data;
        print('inningDatas1${   inningDatas1}');
        // print('awayTeamLogo:::::::${inning1!.innings1!.battingCard!.PlayerID.toString()}');
      });
    } catch (e) {
      setState(() {
        inningDatas1 = null;
      });
    }
  }

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getIning1Data();
  }

  Matchsummarydata argu = Get.arguments;
  @override
  Widget build(BuildContext context) {
    print('Data:: ${argu.comments}');
    // print('Data:: ${inning1data}');
    // print( "inning::::::: ${inning1!.innings1}");
    // print('innings::::::${inning1!.innings1!.battingCard}');
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueAccent.shade100,
        body:
            // matchsummary!.Matchsummary.length ==  0 ? Center(child: Text("No Data"),) :
            Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.indigo.shade800,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                argu.firstBattingTeamName! + "  Innig1",
                style: const TextStyle(color: Colors.white),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.indigo.shade800,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                argu.secondBattingTeamName! + "  Innig1",
                style: const TextStyle(color: Colors.white),
              ),
            ),
            inningDatas1 == null
                ? Center(
                    child: Text('NO DATA'),
                  )
                : 
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                      itemCount: (inningDatas1['Innings1']['BattingCard']).length,
                      itemBuilder: (BuildContext context, index) {
                        // print('inning:::::::${inningDatas1!}');
                  print('dataurl1:::::${inningDatas1['Innings1']['BattingCard'][index]['PlayerName']}');
                            
                        return Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              decoration: BoxDecoration(
                                  color: Colors.indigo.shade800,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "${inningDatas1['Innings1']['BattingCard'][index]['PlayerName']}",
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        );
                      }),
                )
                    ],
                  ),
      ),
    );
  }
}
