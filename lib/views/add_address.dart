import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class AddAddress extends StatelessWidget {
  const AddAddress({super.key});

  @override
  Widget build(BuildContext context) {
    bool isempty = true;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Address",
          textAlign: TextAlign.left,
          style: GoogleFonts.poppins(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 25.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 10,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: PhosphorIcon(
            PhosphorIcons.bold.caretLeft,
            size: 28,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 39.w, right: 26.w, top: 10.h),
            child: Container(
              child: Padding(
                padding: EdgeInsets.only(left: 13, bottom: 16.w, top: 16.h),
                child: Row(
                  children: [
                    Image.asset("images/insurance.png"),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "Items will be safely packed & sanitized \nPay online for contactless delivery",
                        textAlign: TextAlign.left,
                        maxLines: 2,
                        style: GoogleFonts.poppins(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: Color(0xffB7F4F0),
                  borderRadius: BorderRadius.circular(10)),
              width: 325.w,
              height: 68.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 21.h, left: 20.w, right: 277.w),
            child: Text(
              "Deliver to",
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 14.sp,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 13.h),
            child: Container(
              height: 37.h,
              width: 325.w,
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Color(0xff808080)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Color(0xff808080)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 21.h, left: 20.w, right: 227.w),
            child: Text(
              "Mobile Number",
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 14.sp,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 13.h),
            child: SizedBox(
              height: 37.h,
              width: 325.w,
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Color(0xff808080)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Color(0xff808080)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 50.w),
            child: Text(
              "For all delivery related communication",
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 14.sp,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 277.w),
            child: Text(
              "Pincode",
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 14.sp,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 13.h, right: 220.w),
            child: SizedBox(
              height: 37.h,
              width: 97.w,
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Color(0xff808080)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Color(0xff808080)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 150.w),
            child: Text(
              "House and building name",
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 14.sp,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 13.h),
            child: SizedBox(
              height: 37.h,
              width: 325.w,
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Color(0xff808080)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Color(0xff808080)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 250.w),
            child: Text(
              "City name",
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 14.sp,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 13.h),
            child: SizedBox(
              height: 37.h,
              width: 325.w,
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Color(0xff808080)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Color(0xff808080)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 13.h),
            child: SizedBox(
                width: 321.w,
                height: 42.h,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Color(0X00FF40E0D0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Text(
                    "Add new",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
