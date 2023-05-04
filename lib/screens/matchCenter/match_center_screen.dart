import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ppl/appConstant/colorConstant.dart';
import 'package:ppl/appConstant/textstyle.dart';
import 'package:ppl/screens/matchCenter/matchCenterDetail/match_center_detail.dart';
import 'package:ppl/screens/matchCenter/standings/standing_screen.dart';
import 'package:ppl/screens/splashScreen/splash_screen.dart';

class MatchCenterScreen extends StatefulWidget {
  const MatchCenterScreen({super.key});

  @override
  State<MatchCenterScreen> createState() => _MatchCenterScreenState();
}

class _MatchCenterScreenState extends State<MatchCenterScreen> {
  TabBar get _tabBar => TabBar(
          indicatorColor: ColorPalette.tabcolor,
          unselectedLabelColor: ColorPalette.white,
          labelColor: ColorPalette.bottomcolor,
          tabs: const [
            Tab(
              text: "MATCHCENTER",
            ),
            Tab(
              text: "STANDINGS",
            )
          ]);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorPalette.primerySemiLightColor,
          automaticallyImplyLeading: false,
          title: const Text(
            'MATCH CENTER',
            style: textStyle16w600W,
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: Material(
              color: ColorPalette.primeryColor, //<-- SEE HERE
              child: _tabBar,
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            MatchCenterFDetailScreen(),
            StandingScreen(),
          ],
        ),
      ),
    ));
  }
}
