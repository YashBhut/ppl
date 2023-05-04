import 'package:flutter/material.dart';
import 'package:ppl/appConstant/colorConstant.dart';
import 'package:ppl/appConstant/textstyle.dart';

class MoreDetailScreen extends StatefulWidget {
  const MoreDetailScreen({super.key});

  @override
  State<MoreDetailScreen> createState() => _MoreDetailScreenState();
}

class _MoreDetailScreenState extends State<MoreDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Text(
          "More Detail soon...",
          style: textStyle16w600W.copyWith(color: ColorPalette.lightblack),
        ),
      ),
    ));
  }
}
