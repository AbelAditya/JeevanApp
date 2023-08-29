import 'dart:async';
import 'package:flutter_application_1/modals/data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/Page_1.dart';
import 'package:get/get.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  // @override
  // void didChangeDependencies(){
  //   super.didChangeDependencies();
  //   precacheImage(AssetImage("images/splash_logo.png"), context);
  // }

  TController cont = Get.put(TController());

  @override
  void initState() {
    cont.getPopular();
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Onboard()));
    });
  }

  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage("images/splash_logo.png"), context);
    return Scaffold(
      backgroundColor: Color(0xff40E0D0),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 20,),
            Center(child: Image.asset("images/splash_logo.png",height: 300.h,width: 250.h,)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Made in India",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
