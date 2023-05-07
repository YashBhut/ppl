import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:ppl/screens/inningdata/model/inning1model.dart';

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

  Future<inning1model> getIning1Data({required String urlIn1}) async {
    var url = Uri.parse(urlIn1.toString());
    var response = await http.get(url);
    if (response.statusCode == 200) {
      final inning1data = convert.jsonDecode(response.body);
      print('dataurl1:::::${inning1data}');
      return inning1model.fromJson(inning1data);
      // return inning1data;
    } else {
      throw response.body;
    }
  }
}
