import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/add_address.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    bool isempty = true;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Orders",
          textAlign: TextAlign.left,
          style: GoogleFonts.poppins(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 25.sp,
            fontWeight: FontWeight.bold,
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
          isempty
              ? Padding(
                  padding: EdgeInsets.only(top: 109.h, left: 95.w, right: 95.w),
                  child: Column(
                    children: [
                      Image.asset(
                        "images/checklist 1.png",
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 29.h,
                        ),
                        child: Center(
                          child: Text(
                            "Orders will be Order medicines at home",
                            textAlign: TextAlign.left,
                            maxLines: 2,
                            style: GoogleFonts.poppins(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Text(
                  "Items will be safely packed & sanitized \nPay online for contactless delivery",
                  textAlign: TextAlign.left,
                  maxLines: 2,
                  style: GoogleFonts.poppins(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
        ],
      ),
    );
  }
}
