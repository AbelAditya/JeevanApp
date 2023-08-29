import 'package:flutter/material.dart';
import 'package:flutter_application_1/modals/data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/views/Profile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/modals/chips.dart';

class HomeScreen extends StatelessWidget {

  final Function changeToMarket;
  final Function changeToBot;
  final Function changeToSymptomBot;
  HomeScreen({required this.changeToMarket, required this.changeToBot,required this.changeToSymptomBot});

  TController cont = Get.put(TController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 125.w, left: 31.w, top: 10.h),
                  child: Text(
                    "Hello!",
                    style: GoogleFonts.poppins(
                        fontSize: 30.sp, fontWeight: FontWeight.w600),
                  ),
                ),
              ]),
              Padding(
                padding: EdgeInsets.only(right: 30.w, top: 10.h),
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => Profile());
                  },
                  child: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.0.h),
            child: GestureDetector(
              onTap: () {
                changeToBot();
              },
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 13.w, top: 12.h),
                          child: Text(
                            " Get the best \n Medical Advice",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold),
                            maxLines: 2,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.w, top: 5.h),
                          child: Text(
                            " Click here for Free chat \n with our 24/7 available \n health expert",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500),
                            maxLines: 3,
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 151.h,
                      width: 110.w,
                      child: Image.asset(
                        "images/doctor.png",
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
                height: 151.h,
                width: 345.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[
                      Color(0xff40E0D0),
                      Color(0xff6A4AEC),
                    ],
                    tileMode: TileMode.mirror,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 13.w, top: 12.h),
                        child: Text(
                          " Get free medicine \n delivery within \n one hour",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w600),
                          maxLines: 3,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 130.h,
                    width: 90.56.w,
                    child: Image.asset(
                      "images/delivery.png",
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
              height: 151.h,
              width: 345.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[
                    Color(0xff40E0D0),
                    Color(0xff6A4AEC),
                  ],
                  tileMode: TileMode.mirror,
                ),
              ),
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Padding(
          //       padding: EdgeInsets.only(top: 17.0.h, left: 27.w),
          //       child: Text(
          //         "Shop Medicines",
          //         textAlign: TextAlign.left,
          //         style: GoogleFonts.poppins(
          //             color: Colors.black,
          //             fontSize: 22.sp,
          //             fontWeight: FontWeight.bold),
          //       ),
          //     ),
          //     GestureDetector(
          //       onTap: () {
          //         print("HomeAll");
          //         changeToMarket();
          //       },
          //       child: Padding(
          //         padding: EdgeInsets.only(top: 17.0.h, right: 39.h),
          //         child: Text(
          //           "View all",
          //           textAlign: TextAlign.left,
          //           style: GoogleFonts.poppins(
          //               color: Colors.black,
          //               fontSize: 20.sp,
          //               fontWeight: FontWeight.w500),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          // SizedBox(
          //   height: 500,
          //   child: GridView.builder(
          //     shrinkWrap: true,
          //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 3,
          //     ),
          //     itemBuilder: (BuildContext context, int index) {
          //       return Expanded(flex: 1,child: Chip1(title: cont.popular[index]["Name"],AssetName: cont.popular[index]["image"],));
          //     },
          //     itemCount: cont.popular.length,),
          // ),
          Padding(
            padding: EdgeInsets.only(top: 30.0.h),
            child: GestureDetector(
              onTap: () {
                changeToSymptomBot();
              },
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 13.w, top: 12.h),
                            child: Text(
                              "Medical Diagnosis",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.bold),
                              maxLines: 2,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.w, top: 5.h),
                            child: Text(
                              " Click here for a quick and accurate diagnosis of your ailment ",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500),
                              maxLines: 3,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 151.h,
                        width: 110.w,
                        child: Image.asset(
                          "images/doctor.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
                height: 151.h,
                width: 345.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[
                      Color(0xff40E0D0),
                      Color(0xff6A4AEC),
                    ],
                    tileMode: TileMode.mirror,
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
