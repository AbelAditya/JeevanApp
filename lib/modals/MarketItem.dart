import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class MarketItem extends StatelessWidget {
  late String img;
  late String name;

  MarketItem({required String img, required String name}){
    this.img = img;
    this.name = name;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child:Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        child: Row(
          children: [
            Container(
              width: 90,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(img),

              ),
            ),
            SizedBox(width: 10,),
            Text(
              name,
            )
          ],
        ),


      ),
    );
  }
}
