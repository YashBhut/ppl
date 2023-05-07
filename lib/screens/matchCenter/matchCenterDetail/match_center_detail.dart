import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ppl/appConstant/colorConstant.dart';
import 'package:ppl/appConstant/sizeConstant.dart';
import 'package:ppl/appConstant/textstyle.dart';
import 'package:ppl/networkConstant/apiProvider.dart';
import 'package:ppl/screens/inningdata/inningsdata.dart';
import 'package:ppl/screens/matchCenter/matchCenterDetail/model/matchSummaryModel.dart';

import '../../../custom_textformfield.dart';

class MatchCenterFDetailScreen extends StatefulWidget {
  const MatchCenterFDetailScreen({super.key});

  @override
  State<MatchCenterFDetailScreen> createState() =>
      _MatchCenterFDetailScreenState();
}

class _MatchCenterFDetailScreenState extends State<MatchCenterFDetailScreen> {
  MatchSummary? matchsummary;

  getMatchSummary() async {
    var apiService = ApiService();

    try {
      final matchesdata = await apiService.getMatchSummary();

      setState(() {
        matchsummary = matchesdata;
      });
    } catch (e) {
      setState(() {
        matchsummary = null;
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
        backgroundColor: Colors.blueAccent.shade100,
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
              const cusFormFeild(),
              //  matchsummary == null ? Text('no data') : Text("${matchsummary!.Matchsummary[0].matchDate}"),
              matchsummary == null
                  ? const Center(
                      child: Text("No Data Available"),
                    )
                  : Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        itemCount: matchsummary!.Matchsummary.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return InkWell(onTap: () {
                            Get.to(InningsData(),arguments: matchsummary!.Matchsummary[index]);
                          },child: Matchsummarycontainer(index));
                        },
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Matchsummarycontainer(int i) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            matchsummary!.Matchsummary[i].comments,
            style: textStyle14w400D.copyWith(
                color: Colors.blue.shade900, fontSize: 12),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              team1data(i),
              const Text("-V-"),
              team2data(i),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              height: 8,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            matchsummary!.Matchsummary[i].matchDate +
                "," +
                matchsummary!.Matchsummary[i].matchTime,
                style: textStyle14w400D.copyWith(color: Colors.grey),
          ),
          SizedBox(height: 5,),
          Text( matchsummary!.Matchsummary[i].groundName +
                "," +
                matchsummary!.Matchsummary[i].city,
                style: textStyle14w400D.copyWith(color: Colors.black),)
        ],
      ),
    );
  }

  Row team1data(int i) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: CircleAvatar(
            backgroundColor: Colors.grey.shade300,
            radius: 30,
            // foregroundImage:
            //     NetworkImage(List[i].image1.toString(), scale: 1),
            child: CachedNetworkImage(
              imageUrl: matchsummary!.Matchsummary[i].homeTeamLogo.toString(),
              placeholder: (context, url) => const SizedBox(
                child: SizedBox(
                    height: 12,
                    width: 12,
                    child: CircularProgressIndicator(strokeWidth: 1)),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              // height: 35,
              width: 90,
              child: Text(
                matchsummary!.Matchsummary[i].firstBattingTeamName,
                style: textStyle14w400D.copyWith(
                    color: Colors.black, fontSize: 12),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
            Row(
              children: [
                Text(
                  matchsummary!.Matchsummary[i].s1FallScore,
                  style: textStyle14w400D.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "/",
                  style: textStyle14w400D.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  matchsummary!.Matchsummary[i].s1FallWickets,
                  style: textStyle14w400D.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              "(" + matchsummary!.Matchsummary[i].s1FallOvers + " Ov)",
              style:
                  textStyle14w400D.copyWith(color: Colors.grey, fontSize: 13),
            )
          ],
        ),
      ],
    );
  }

  Widget team2data(int i) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: 90,
              child: Text(
                matchsummary!.Matchsummary[i].secondBattingTeamName,
                style: textStyle14w400D.copyWith(
                    color: Colors.black, fontSize: 12),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  matchsummary!.Matchsummary[i].s2FallScore,
                  style: textStyle14w400D.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "/",
                  style: textStyle14w400D.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  matchsummary!.Matchsummary[i].s2FallWickets,
                  style: textStyle14w400D.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              "(" + matchsummary!.Matchsummary[i].s2FallOvers + " Ov)",
              style:
                  textStyle14w400D.copyWith(color: Colors.grey, fontSize: 13),
            )
          ],
        ),
        const SizedBox(
          width: 8,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: CircleAvatar(
            backgroundColor: Colors.grey.shade300,
            radius: 30,
            // foregroundImage:
            //     NetworkImage(List[i].image1.toString(), scale: 1),
            child: CachedNetworkImage(
              imageUrl: matchsummary!.Matchsummary[i].awayTeamLogo.toString(),
              placeholder: (context, url) => const SizedBox(
                child: SizedBox(
                    height: 12,
                    width: 12,
                    child: CircularProgressIndicator(strokeWidth: 1)),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ),
      ],
    );
  }
}
