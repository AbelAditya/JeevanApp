import "package:flutter/material.dart";
import "package:flutter_application_1/modals/chips.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:google_fonts/google_fonts.dart";
import "package:phosphor_flutter/phosphor_flutter.dart";
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_application_1/service/api.dart';

class Market extends StatefulWidget {
  const Market({super.key, required this.postpin});
  final String postpin;

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  List<String> items = ["Ad1", "ad2", "ad3", "ad4", "ad5"];
  TextEditingController _search = TextEditingController();
  var data;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        height: 844.h,
        width: 390.w,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 9.w, top: 10.h),
                  child: PhosphorIcon(
                    PhosphorIcons.bold.caretLeft,
                    size: 29,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 9.w, top: 10.h),
                  child: Text(
                    "Marketplace",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 29.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 13.h),
              child: Container(
                color: Color(0xffFFFDD0),
                height: 40.h,
                width: 390.w,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30.w),
                      child: Text(
                        "Express Delivery to " + widget.postpin,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 10.h),
              child: Neumorphic(
                child: TextField(
                  controller: _search,
                  decoration: InputDecoration(
                    prefixIcon: GestureDetector(
                      onTap: ()async{
                        var x;
                        if(_search.text==""){
                          x = await API.getProducts();
                        }
                        else{
                          x = await API.getProductBySearch(medName: _search.text);
                        }
                        print(x);
                      },
                      child: PhosphorIcon(
                        PhosphorIcons.regular.magnifyingGlass,
                      ),
                    ),
                    hintText: "Search for medicines",
                    hintStyle: GoogleFonts.poppins(fontSize: 15.sp),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: FlutterCarousel(
                options: CarouselOptions(
                    height: 200.0,
                    showIndicator: false,
                    autoPlay: true,
                    enableInfiniteScroll: true),
                items: items.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 193, 193, 192),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                '$i',
                                style: TextStyle(fontSize: 16.0),
                              ),
                            )),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Chip1(title: "Title",AssetName: "images/supplement.jpg",);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
