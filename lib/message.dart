import 'package:flutter/material.dart';
import 'package:assignment1_flutter/message_contant.dart';

class Massage extends StatelessWidget {
  bool send;
  String message;
  String imageUrl;

  Massage({this.send=false , required this.message , required this.imageUrl });

  @override
  Widget build(BuildContext context) {
    return
      Row(
        mainAxisAlignment: send?MainAxisAlignment.end:MainAxisAlignment.start,
        children: [
          SizedBox(width: 20,),
          send?MessageContant(message: message,):CircleAvatar(backgroundImage:AssetImage(imageUrl),),
          send?CircleAvatar(backgroundImage:AssetImage(imageUrl),):MessageContant(message: message,),
        ],//children
      )
    ;
  }
}
