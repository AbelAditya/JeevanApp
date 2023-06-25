import 'package:flutter/material.dart';
import 'package:kommunicate_flutter/kommunicate_flutter.dart';

class chatBot extends StatefulWidget {
  final Function changeToHome;

  chatBot({required this.changeToHome});

  @override
  State<chatBot> createState() => _chatBotState();
}

class _chatBotState extends State<chatBot> {
  void chatBotInitalize()async {
    try {
      dynamic conversationObject = {
        'appId': '168f9c89f2bacaa38f199e396b3044b25'
      };
      dynamic result = await KommunicateFlutterPlugin.buildConversation(
          conversationObject);
      print("Conversation builder success : " + result.toString());
    } on Exception catch (e) {
      print("Conversation builder error occurred : " + e.toString());
    }
  }

  void goingBack()async{
    await Future.delayed(Duration(seconds: 7));
    widget.changeToHome();
  }

  void initState(){
    super.initState();
    chatBotInitalize();
    goingBack();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
