
import 'package:chat_app/models/message.dart';
import 'package:flutter/material.dart';
class ChatBubble extends StatelessWidget {
   ChatBubble({
    required this.message
  });

final  Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.all(18),
        margin: EdgeInsets.all(18),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(32),
              topLeft: Radius.circular(32),
              bottomRight: Radius.circular(32),
            ),
            color: Colors.purple[900],
        ),
        child: Text(message.message,style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
class ChatBubbleForFriend extends StatelessWidget {
  ChatBubbleForFriend({
    required this.message
  });

  final  Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.all(18),
        margin: EdgeInsets.all(18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(32),
            topLeft: Radius.circular(32),
            bottomLeft: Radius.circular(32),
          ),
          color: Colors.pinkAccent,
        ),
        child: Text(message.message,style: TextStyle(color: Colors.white),),
      ),
    );
  }
}



