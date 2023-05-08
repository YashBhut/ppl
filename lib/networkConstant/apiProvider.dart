import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import 'package:ppl/screens/matchCenter/matchCenterDetail/model/matchSummaryModel.dart';

class ApiService {
  Future<MatchSummary> getMatchSummary() async {
    var url = Uri.parse(
        "https://run.mocky.io/v3/88cee7fe-d4c7-483a-87c5-70a615caf340");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      final matchsummarydata = convert.jsonDecode(response.body);
      return MatchSummary.fromjson(matchsummarydata);
    } else {
      throw response.body;
    }
  }

  Future getIning1Data({required String urlIn1}) async {
    var url = Uri.parse(urlIn1.toString());
    var response = await http.get(url);
    if (response.statusCode == 200) {
      final inning1data = convert.jsonDecode(response.body);
      print('dataurl1:::::${inning1data['Innings1']['BattingCard'][0]['PlayerName']}');
      print('dataurl1:::::${(inning1data['Innings1']['BattingCard']).length}');

      // var datas = inning1model.fromJson(inning1data);
      // print('Data ining:: $datas');
      return inning1data;
      // return inning1data;
    } else {
      throw response.body;
    }
  }
}

//done??
// phone upad ne