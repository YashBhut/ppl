import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ppl/screens/matchCenter/matchCenterDetail/model/matchSummaryModel.dart';

import '../../networkConstant/apiProvider.dart';
import 'model/inning1model.dart';

class InningsData extends StatefulWidget {
  const InningsData( {super.key});

  @override
  State<InningsData> createState() => _InningsDataState();
}

class _InningsDataState extends State<InningsData> {
  // MatchSummary? matchsummary;
  Innings1? inning1;
//  var inning1data;
  getIning1Data() async {
    var apiService = ApiService();

    try {
      final inning1data = await apiService.getIning1Data(urlIn1: "${argu.inning1}");

      setState(() {
        inning1 = inning1data.innings1;
        print(inning1);
        // print('awayTeamLogo:::::::${inning1!.innings1!.battingCard!.PlayerID.toString()}');
      });
    } catch (e) {
      setState(() {
        inning1 = null;
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
            inning1 == null
                ? Center(
                    child: Text('NO DATA'),
                  )
                : 
                ListView.builder(
                    itemCount: inning1!.battingCard!.length,
                    itemBuilder: (BuildContext context, index) {
                      print('inning:::::::${inning1!}');
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
                              "${inning1!.battingCard![index].againstFast}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      );
                    })
          ],
        ),
      ),
    );
  }
}
