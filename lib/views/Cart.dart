import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:flutter_application_1/modals/ProductTile.dart';
import 'package:flutter_application_1/modals/data.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/service/api.dart';
import 'package:url_launcher/url_launcher.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  TController cont = Get.put(TController());

  String getTotalBill(){
    double sum=0;
    for(int i=0;i<cont.cart.length;i++){
      sum+=cont.cart[i][1]*cont.cart[i][2];
    }

    return sum.toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 80.h,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25.w, top: 10.h),
                      child: Text(
                        "CART",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              cont.cart.isEmpty
                  ? Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 50.h),
                      child: Image.asset("images/empty.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.h),
                      child: Text(
                        "Your Medicine / Healthcare cart is empty!",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              )
                  : Expanded(
                  child: ListView.builder(
                    itemBuilder: (_, index) => Dismissible(
                      key: Key(index.toString()),
                      onDismissed: (_) {
                        cont.cart.removeAt(index);
                      },
                      confirmDismiss: (direction) => showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                          title: Text(
                            "Delete Item",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          content: Text("Do you wish to delete this item ?"),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextButton(onPressed: ()=>Navigator.of(context).pop(true), child: Text("Yes",style: TextStyle(fontSize: 15),),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextButton(onPressed: ()=>Navigator.of(context).pop(false),child: Text("No",style: TextStyle(fontSize: 15),),),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ProductTile(
                          medName: cont.cart[index][0],
                          price: cont.cart[index][1],
                          count: cont.cart[index][2],
                        ),
                      ),
                    ),
                    itemCount: cont.cart.length,
                  )),
            ],
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: ()async{
                    String url = "whatsapp://send?phone=+916379022617&text=${Uri.encodeComponent("Hello")}";
                    await canLaunchUrl(Uri.parse(url))?launchUrl(Uri.parse(url)):print("Couldn't send order");
                  },
                  child: Text("SEND ORDER",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                ),
              ),
            ),
          ),
        ]
      ),
    );
  }
}
