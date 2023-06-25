import 'package:flutter/material.dart';
import 'package:flutter_application_1/modals/chips.dart';
import 'package:flutter_application_1/views/Profile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:flutter_application_1/screens/SearchResult.dart';
import 'Cart.dart';
import 'package:flutter_application_1/modals/data.dart';
import 'package:flutter_application_1/screens/chatBot.dart';
import 'package:kommunicate_flutter/kommunicate_flutter.dart';
import 'package:flutter_application_1/screens/homeScreen.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int index = 0;

  late List<Widget> screens;

  TController cont = Get.put(TController());

  void initState(){
    cont.getAllProd();
    super.initState();
  }
  void changePage(int val){
    setState(() {
      index=val;
      print(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    screens = [
      HomeScreen(changeToMarket: ()=>changePage(1),
        changeToBot: ()=> changePage(2),
      ),
      SearchResult(),
      chatBot(
        changeToHome: ()=>changePage(0),
      ),
    ];
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 81.h,
        selectedIndex: index,
        onDestinationSelected: (index) {
          setState(() => this.index = index);
        },
        destinations: [
          NavigationDestination(
              icon: index == 0
                  ? new PhosphorIcon(
                      PhosphorIcons.fill.house,
                    )
                  : new PhosphorIcon(
                      PhosphorIcons.regular.house,
                    ),
              label: "Home"),
          NavigationDestination(
              icon: index == 1
                  ? new PhosphorIcon(
                      PhosphorIcons.fill.shoppingBag,
                    )
                  : new PhosphorIcon(
                      PhosphorIcons.regular.shoppingBag,
                    ),
              label: "Marketplace"),
          NavigationDestination(
              icon: index == 2
                  ? new PhosphorIcon(
                      PhosphorIcons.fill.robot,
                    )
                  : new PhosphorIcon(
                      PhosphorIcons.regular.robot,
                    ),
              label: "Chatbot"),
        ],
      ),
      body: screens[index],
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
    );
  }
}
