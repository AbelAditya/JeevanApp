import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/modals/data.dart';
import 'ChatBubble.dart';
import 'MessageBox.dart';
void main() {
  runApp(chatBot());
}

class chatBot extends StatefulWidget {
  @override
  State<chatBot> createState() => _chatBotState();
}

class _chatBotState extends State<chatBot> {
  TController cont = TController();
  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollController = ScrollController();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChatBot',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ChatBot'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                controller: _scrollController,
                dragStartBehavior: DragStartBehavior.down,
                child: ListView.builder(
                  itemCount: cont.messages.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ChatBubble(
                      message: cont.messages[index].msg,
                      dateTime: cont.messages[index].dateTime,
                      isMe: cont.messages[index].isMe,
                    );
                  },
                ),
              ),
            ),
            MessageBox(
              scrollController: _scrollController,
            ),
          ],
        ),
      ),
    );
  }
}
