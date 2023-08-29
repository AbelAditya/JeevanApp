import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ChatBotControllerS.dart';

class MessageBox extends GetView<ChatBotControllerS> {
  final TextEditingController textController = TextEditingController();
  late ChatBotControllerS chat_controller;

  MessageBox({required ChatBotControllerS chat_controller}) {
    this.chat_controller = chat_controller;
  }

  @override
  Widget build(BuildContext context) {
    String combinedMsg = "";
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              scrollPadding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              onTap: () {
                Future.delayed(Duration(milliseconds: 300), () {
                  chat_controller.scrollToBottom();
                });
              },
              controller: textController,
              decoration: InputDecoration(
                hintText: 'Type a message',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            backgroundColor: Color(0xff40e0d0),
            onPressed: () {
              String userMessage = textController.text;
              textController.clear();
              combinedMsg = combinedMsg + userMessage;
              chat_controller.sendMsg(userMessage, combinedMsg);
            },
            child: Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}
