import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'ChatgptAPI.dart';

class ChatBotController extends GetxController {
  final scrollController = ScrollController();
  List<dynamic> messages = [].obs;

  ChatBotController(){
    DateTime datetime = DateTime.now();
    String formatted = "${datetime.day}-${datetime.month}-${datetime.year} ${datetime.hour}:${datetime.minute}";
    messages.add({
      'message': 'Hello, I am Jeevan. How can i help you?',
      'dateTime': "$formatted",
      'isMe': false
    });
  }


  void addMessage(String message, String dateTime, bool isMe) {
    messages.add({
      'message': message,
      'dateTime': dateTime,
      'isMe': isMe,
    });
  }

  void scrollToBottom() {
    SchedulerBinding.instance!.addPostFrameCallback((_) {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  Future<void> sendMsg(String userMessage) async {
    if(userMessage == ''){
      return;
    }
    DateTime datetime = DateTime.now();
    String formattedDate = "${datetime.day}-${datetime.month}-${datetime.year} ${datetime.hour}:${datetime.minute}";
    addMessage(userMessage, formattedDate, true);
    scrollToBottom();

    String response = await sendMessage(userMessage);

    addMessage(response, formattedDate, false);
    scrollToBottom();
  }
}
