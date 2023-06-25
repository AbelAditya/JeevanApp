import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/modals/data.dart';

class API {
  static String _baseUrl = "http://10.0.2.2:1337";

  static TController cont = Get.put(TController());

  static Future<dynamic> getProducts() async {
    http.Response resp = await http.get(Uri.parse('${_baseUrl}/api/products'));

    if (resp.statusCode == 200) {
      return jsonDecode(resp.body);
    } else {
      print("Request failed");
      return -1;
    }
  }

  static Future<dynamic> getProductBySearch({required String medName}) async {
    http.Response resp = await http.get(Uri.parse(
        '$_baseUrl/api/products?filters[Med_Name][\$contains]=$medName'));

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

}
