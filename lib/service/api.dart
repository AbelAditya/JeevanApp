import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/modals/data.dart';

class API {
  static String _baseUrl = "https://jeevanapi.onrender.com";

  static TController cont = Get.put(TController());

  static Future<dynamic> getProductBySearch({required String medName}) async {
    http.Response resp = await http.get(Uri.parse(
        '$_baseUrl/search?name=$medName'));

    if (resp.statusCode == 200) {
      return jsonDecode(resp.body);
    } else {
      print("Request failed2");
    }
  }

  static Future<dynamic> getPopular() async {
    http.Response resp = await http.get(Uri.parse(
        '$_baseUrl/popular'));

    if (resp.statusCode == 200) {
      return jsonDecode(resp.body);
    } else {
      print("Request failed2");
    }
  }

  static Future<dynamic> placeOrder() async {
    http.Response resp = await http.post(
      Uri.parse("$_baseUrl/api/orders"),
      body: json.encode({
        "data": {
          "User_name": "Abel Aditya",
          "Medicines": cont.getMedName(),
          "Quantity": cont.getQuant()
        }
      }),
      headers: {'content-Type':'application/json'}
    );

    print(resp.body);

  }

  static Future<dynamic> getDesc({required String url})async{
    http.Response resp = await http.get(Uri.parse('$_baseUrl/desc?url=$url'));

    if(resp.statusCode==200){
      return jsonDecode(resp.body);
    }
    else{
      print("Error fetching the description");
    }
  }

}
