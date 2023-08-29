import 'package:flutter_application_1/service/api.dart';
import 'package:get/get.dart';
// import 'package:flutter_application_1/service/api.dart';
import 'package:flutter_application_1/modals/Message.dart';

class TController extends GetxController{
  List _cart=[];
  List get cart=>_cart;

  List _allMed=[];
  List get allMed=>_allMed;

  List _popular=[];
  List get popular=>_popular;

  List<messageTemplate> _messages=[messageTemplate(msg: 'Hello, I am ChatBot. How can I help you?', dateTime: '12-10-2021 10:00', isMe: false)];
  List<messageTemplate> get messages=>_messages;
  
  void addMsg(messageTemplate mt){
    _messages.add(mt);
  }

  void addItemCart(List item){
    _cart.add(item);
    print(_cart);
  }

  // void getAllProd()async{
  //   var x = await API.getProducts();
  //   for(int i=0;i<x["data"].length;i++){
  //     _allMed.add([x["data"][i]["attributes"]["Med_Name"],x["data"][i]["attributes"]["Price"].toDouble()]);
  //   }
  //   print(_allMed);
  // }

  void getPopular()async{
    var x = await API.getPopular();
    _popular = x["data"];
  }

  void delItemCart(String name){
    _cart.removeWhere((item)=>item[0]==name);
  }

  String getMedName(){
    String x="";
    for(int i=0;i<cart.length;i++){
      if(i==cart.length-1)
        x=x+cart[i][0].toString();
      else x=x+cart[i][0].toString()+',';
    }
    return x;
  }

  String getQuant(){
    String x="";
    for(int i=0;i<cart.length;i++){
      if(i==cart.length-1)
      x=x+cart[i][2].toString();
      else x=x+cart[i][2].toString()+',';
    }
    return x;
  }
}
