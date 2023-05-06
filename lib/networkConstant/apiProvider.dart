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

      // print('Match:: ${MatchSummary.fromJson(matchsummarydata).bowlerMaidens}');
      return MatchSummary.fromjson(matchsummarydata);
      // print(matchsummarydata);
    } else {
      throw response.body;
    }
  }
}