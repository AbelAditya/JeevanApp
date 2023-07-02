import 'package:flutter/material.dart';
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_application_1/modals/ProductTile.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/modals/data.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_application_1/modals/chips.dart';
import '../modals/MarketItem.dart';

class SearchResult extends StatefulWidget {
  SearchResult();

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  TextEditingController _search = TextEditingController();

  List items = [['images/Jeevan/accessories.jpg','Accesories and Wearables'],
    ['images/Jeevan/fitness_suppliments.jpg','Fitness Suppliments'],
    ['images/Jeevan/food_and_drinks.jpg','Food and Drinks'],
    ['images/Jeevan/health_condition.jpg','Health Condition'],
    ['images/Jeevan/healthcare_devices.jpg','Healthcare Devices'],
    ['images/Jeevan/home_care.jpg','Home Care'],
    ['images/Jeevan/medicines.jpg','Medicines'],
    ['images/Jeevan/mother_and_baby_care.jpg','Mother and Baby Care'],
    ['images/Jeevan/nutritional_suppliments.webp','Nutritional Suppliments'],
    ['images/Jeevan/personal_care.jfif','Personal Care'],
    ['images/Jeevan/skin_care.jpg','Skin Care']
  ];

  List med = [];
  TController cont = Get.put(TController());

  List chipList = [[""],];
  
  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    for(int i=0;i<items.length;i++){
      precacheImage(AssetImage(items[i][0]), context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [Container(
          height: 844.h,
          width: 390.w,
          child: Expanded(
            child: ListView.builder(itemBuilder: (context, index)=> MarketItem(img: items[index][0], name: items[index][1]),
            itemCount: items.length,
            )
          ),
        ),Container(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: ()async{
                  String url = "whatsapp://send?phone=+916383164829&text=${Uri.encodeComponent("I would like to place an order.")}";
                  await canLaunchUrl(Uri.parse(url))?launchUrl(Uri.parse(url)):print("Couldn't send order");
                },
                child: Text("SEND ORDER",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
              ),
            ),
          ),
        ),
        ],
      ),
    );
  }
}

// Showing products
// Expanded(
//   child: ListView.builder(
//     itemBuilder: (x, index) => Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ProductTile(
//         medName: med[index][0],
//         price: med[index][1],
//       ),
//     ),
//     itemCount: med.length,
//   ),
// ),