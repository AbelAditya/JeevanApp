import 'package:flutter/material.dart';
import 'ChatgptAPI.dart';
import 'package:flutter_application_1/modals/Message.dart';
import 'package:flutter_application_1/modals/data.dart';

class MessageBox extends StatefulWidget {
  late ScrollController scrollController;
  MessageBox({ required this.scrollController});

  @override
  State<MessageBox> createState() => _MessageBoxState();
}

class _MessageBoxState extends State<MessageBox> {
  final Tex = TextEditingController();

  late String userMessage;

  void dispose(){
    super.dispose();
    Tex.dispose();
  }

  TController cont = TController();

  void _scrollToBottom() {
    widget.scrollController.animateTo(
      widget.scrollController.position.maxScrollExtent,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              onTap: _scrollToBottom,
              controller: Tex,
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
            onPressed: () async {
              userMessage = Tex.text;
              print(userMessage);

              DateTime datetime = DateTime.now();
              String formattedDate = "${datetime.day}-${datetime.month}-${datetime.year} ${datetime.hour}:${datetime.minute}";
                // _addmessage(userMessage, formattedDate, true);
                // String response = await sendMessage(userMessage);
                // _addmessage(response, formattedDate, false);
              Tex.clear();
              messageTemplate(msg: userMessage,dateTime: formattedDate,isMe: true);
              _scrollToBottom();
            },
            child: Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}
