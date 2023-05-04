import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:ppl/appConstant/colorConstant.dart';
import 'package:ppl/appConstant/sizeConstant.dart';
import 'package:ppl/appConstant/textstyle.dart';
import 'package:ppl/networkConstant/apiProvider.dart';

import '../../../custom_textformfield.dart';
import 'model/matchSummaryModel.dart';

class MatchCenterFDetailScreen extends StatefulWidget {
  const MatchCenterFDetailScreen({super.key});

  @override
  State<MatchCenterFDetailScreen> createState() =>
      _MatchCenterFDetailScreenState();
}

class _MatchCenterFDetailScreenState extends State<MatchCenterFDetailScreen> {
  Matchsummary? _matchsummary;

  getMatchSummary() async {
    var apiService = ApiService();

    try {
      final matchsummary = await apiService.getMatchSummary();

      setState(() {
        _matchsummary = matchsummary;

        print('awayTeamLogo:::::::${_matchsummary!.awayTeamLogo}');
      });
    } catch (e) {
      setState(() {
        _matchsummary = null;
      });
    }
  }

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMatchSummary();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Padding(
          padding: Paddings.paddingH20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              spacerH24,
              Text(
                "PPL 2022-23",
                style: textStyle16w600W.copyWith(color: ColorPalette.black),
              ),
              spacerH24,
              cusFormFeild(),
              Text("${_matchsummary!.bowlerRuns}"),
            ],
          ),
        ),
      ),
    );
  }
}
