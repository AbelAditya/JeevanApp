import 'package:flutter/material.dart';
import "package:flutter_screenutil/flutter_screenutil.dart";
import 'package:get/get.dart';
import 'package:flutter_application_1/modals/data.dart';
import 'package:flutter_application_1/service/api.dart';

class ProductTile extends StatefulWidget {
  final String medName;
  final double price;
  final String imgUrl;
  final String descUrl;
  int count;

  ProductTile({required this.medName, required this.price, this.count=0,required this.imgUrl,required this.descUrl});

  @override
  State<ProductTile> createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  // int count=0;
  TController cont= Get.put(TController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()async{
        var x;
        x= await API.getDesc(url: widget.descUrl);
        showDialog(
            context: context,
            builder: (_)=> AlertDialog(
              title: Center(child: Text(widget.medName,style: TextStyle(fontWeight: FontWeight.bold),)),
              content: x==null?Container(child: CircularProgressIndicator(),padding: EdgeInsets.symmetric(horizontal: 100),):Text(x['desc']),
            )
        );
      },
      child: Container(
        height: 200.h,
        width: 350.w,
        decoration: BoxDecoration(
            color: Color(0xffB7F4F0), borderRadius: BorderRadius.circular(30.0)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
              child: Container(
                child: ClipRRect(child: Image.network(widget.imgUrl,),borderRadius: BorderRadius.circular(30.0),),
                height: 175.h,
                width: 175.w,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    widget.medName,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  width: 170.w,
                ),
                Text(
                  "Price: Rs ${widget.price}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            // count++;
                            widget.count++;
                          });
                          int flag=0;
                          for(int i=0;i<cont.cart.length;i++){
                            if(widget.medName==cont.cart[i][0]){
                              cont.cart[i][2]++;
                              flag=1;
                              break;
                            }
                          }
                          if(flag==0) cont.cart.add([widget.medName,widget.price,widget.count,widget.imgUrl,widget.descUrl]);
                          print(cont.cart);
                        },
                        child: Text(
                          "+",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.red),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "${widget.count}",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            // count--;
                            widget.count==0?{}:widget.count--;
                          });

                          if(widget.count!=0){
                            for(int i=0;i<cont.cart.length;i++){
                              if(widget.medName==cont.cart[i][0]){
                                cont.cart[i][2]--;
                                break;
                              }
                            }
                          }
                          else{
                            cont.delItemCart(widget.medName);
                          }
                          print(cont.cart);
                        },
                        child: Text(
                          "-",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.red),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
