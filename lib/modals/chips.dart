import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Chip1 extends StatelessWidget {
  const Chip1({required this.AssetName, required this.title});
  final String title;
  final String AssetName;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100.h,
          width: 100.w,
          child: ClipRRect(
            child: Image.asset(AssetName,fit: BoxFit.fill,),
            borderRadius: BorderRadius.circular(10),
          ),
          decoration: BoxDecoration(
              color: Color(0xffB7F4F0),
              borderRadius: BorderRadius.circular(10),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            title,
            maxLines: 2,
            textAlign: TextAlign.left,
            style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 15.sp,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
