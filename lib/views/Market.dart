import "package:flutter/material.dart";
import "package:flutter_application_1/modals/ProductTile.dart";
import "package:flutter_application_1/modals/chips.dart";
import "package:flutter_application_1/views/Cart.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:google_fonts/google_fonts.dart";
import "package:phosphor_flutter/phosphor_flutter.dart";
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_application_1/service/api.dart';
import 'package:flutter_application_1/modals/data.dart';
import 'package:get/get.dart';

class Market extends StatefulWidget {
  const Market({super.key, required this.postpin});
  final String postpin;

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  List<String> items = ["Ad1", "Ad2", "Ad3", "Ad4", "Ad5"];
  TextEditingController _search = TextEditingController();
  TController cont = Get.put(TController());
  bool searching = false;
  List meds = [];

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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (searching) searching = false;
                      _search.text = "";
                    });
                  },
                  icon: Icon(Icons.arrow_back_ios_sharp),
                ),
                Text(
                  "Marketplace",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 29.sp,
                      fontWeight: FontWeight.w500),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Cart(),
                      ),
                    );
                  },
                  icon: Icon(Icons.shopping_cart),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 10.h),
              child: Neumorphic(
                child: TextField(
                  controller: _search,
                  decoration: InputDecoration(
                    prefixIcon: GestureDetector(
                      onTap: () async {
                        var x;
                        x = await API.getProductBySearch(medName: _search.text);
                        setState(() {
                          print(x["data"]);
                          meds = x["data"];
                          searching = true;
                        });
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
            if (searching)
              Expanded(
                child: ListView.builder(
                  itemCount: meds.length,
                  itemBuilder: (ctx, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ProductTile(
                      medName: meds[index]["Name"],
                      price: meds[index]["Price"],
                      imgUrl: meds[index]['image'],
                      descUrl: meds[index]['desc'],
                    ),
                  ),
                ),
              ),
            if (!searching)
              Expanded(
                child: Column(
                  children: [
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
                                        color:
                                            Color.fromARGB(255, 193, 193, 192),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Image.network(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvjXzB5_YGTKV2etwiPHsANqS8cxz1hj1myQ&usqp=CAU",
                                      fit: BoxFit.fill,
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
                          return Chip1(
                            title: cont.popular[index]["Name"],
                            AssetName: cont.popular[index]["image"],
                          );
                        },
                        itemCount: cont.popular.length,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
