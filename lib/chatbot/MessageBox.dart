import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ChatBotController.dart';

class MessageBox extends GetView<ChatBotController> {
  final TextEditingController textController = TextEditingController();
  late ChatBotController chat_controller;

  MessageBox({required ChatBotController chat_controller}){
    this.chat_controller = chat_controller;
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              onTap: (){
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
              chat_controller.sendMsg(userMessage);
            },
            child: Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}
