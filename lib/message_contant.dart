import 'package:flutter/material.dart';
import 'package:assignment1_flutter/message.dart';

class MessageContant extends StatelessWidget {
  String message;
  MessageContant({required this.message});

  @override
  Widget build(BuildContext context) {
    return
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15 , vertical: 15),
        padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.white , width: 1),

        ),
        child: Text(message,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),),
      )
    ;
  }
}
