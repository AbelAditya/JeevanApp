import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/adress.dart';
import 'package:flutter_application_1/views/legal.dart';
import 'package:flutter_application_1/views/notifications.dart';
import 'package:flutter_application_1/views/orders.dart';
import 'package:flutter_application_1/views/saved_for_later.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15.0.h, left: 33.w),
                child: Text(
                  "Rishabh",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 19.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0.h, right: 20.w),
                child: Text(
                  "Edit",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.inter(
                      color: Color(0xff40E0D0),
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20.0.h, left: 33.w),
                child: Text(
                  "6294443095",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.inter(
                    color: Color(0xff808080),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0.h, right: 20.w),
                child: Text(
                  "rishabhsharma28302@gmail.com",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.inter(
                      color: Color(0xff808080),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 38.h),
            child: ListTile(
              onTap: () {
                Get.to(() => Orders());
              },
              trailing: Image.asset("images/Vector.png"),
              title: Text(
                "Orders",
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  color: Color(0xff808080),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Image.asset("images/checklist.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: ListTile(
              onTap: () {
                Get.to(() => Savedfl());
              },
              trailing: Image.asset("images/Vector.png"),
              title: Text(
                "Saved for later",
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  color: Color(0xff808080),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Image.asset("images/bookmark.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: ListTile(
              onTap: () {
                Get.to(() => Notifications());
              },
              trailing: Image.asset("images/Vector.png"),
              title: Text(
                "Notifications",
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  color: Color(0xff808080),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Image.asset("images/bell-ring.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: ListTile(
              onTap: () {
                Get.to(() => Address());
              },
              trailing: Image.asset("images/Vector.png"),
              title: Text(
                "Manage Address",
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  color: Color(0xff808080),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Image.asset("images/placeholder.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: ListTile(
              onTap: () {
                Get.to(() => Legal());
              },
              trailing: Image.asset("images/Vector.png"),
              title: Text(
                "Legal",
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  color: Color(0xff808080),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Image.asset("images/bankruptcy.png"),
            ),
          )
        ],
      )),
    );
  }
}
