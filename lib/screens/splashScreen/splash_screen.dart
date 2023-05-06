import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ppl/appConstant/assetsPath.dart';
import 'package:ppl/screens/mainScreenBttom/mainScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () => Get.to(const MainScreen()));
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(children: [
      Container(
        height: height,
        width: width,
        child: Image.asset(img.background, fit: BoxFit.cover),
      ),
      Positioned(
        top: height*0.2,
        left: width*0.25,
          height: height * 0.4,
          width: width * 0.5,
          child: Image.asset(img.ppllogo))
    ]));
  }
}
