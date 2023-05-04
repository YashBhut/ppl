import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ppl/appConstant/textstyle.dart';
import 'package:ppl/screens/matchCenter/match_center_screen.dart';
import 'package:ppl/screens/moreDetail/more_detail.dart';

import '../../appConstant/colorConstant.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentIndex == 0
          ? const MatchCenterScreen()
          : const MoreDetailScreen(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorPalette.primeryColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle:
            textStyle16w600W.copyWith(fontWeight: FontWeight.w400),
        unselectedLabelStyle:
            textStyle14w500T.copyWith(fontWeight: FontWeight.w400),
        unselectedItemColor: ColorPalette.white,
        items: [
          BottomNavigationBarItem(
            label: 'Match Center',
            icon: Icon(
              size: 30,
              Icons.play_circle_outline_outlined,
              color: currentIndex == 0
                  ? ColorPalette.bottomcolor
                  : ColorPalette.white,
            ),
          ),
          BottomNavigationBarItem(
            label: 'More',
            icon: Icon(
              size: 30,
              Icons.more_horiz_outlined,
              color: currentIndex == 1
                  ? ColorPalette.bottomcolor
                  : ColorPalette.white,
            ),
          ),
        ],
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
      ),
    );
  }
}
