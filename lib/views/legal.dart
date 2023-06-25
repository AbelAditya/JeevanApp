import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/customorsupport.dart';
import 'package:flutter_application_1/views/privacy.dart';
import 'package:flutter_application_1/views/tnc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Legal extends StatelessWidget {
  const Legal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: ListTile(
              onTap: () {
                Get.to(() => Terms());
              },
              trailing: Image.asset("images/Vector.png"),
              title: Text(
                "Terms and Conditions",
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Image.asset("images/terms-and-conditions.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: ListTile(
              onTap: () {
                Get.to(() => Privacy());
              },
              trailing: Image.asset("images/Vector.png"),
              title: Text(
                "Privacy Policy",
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Image.asset("images/policy.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: ListTile(
              onTap: () {
                Get.to(() => Cussuport());
              },
              trailing: Image.asset("images/Vector.png"),
              title: Text(
                "Customer Support Policy",
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Image.asset("images/customer-service.png"),
            ),
          )
        ],
      ),
      appBar: AppBar(
        title: Text(
          "Legal",
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
    );
  }
}
