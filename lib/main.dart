import 'package:flutter/material.dart';
import 'package:assignment1_flutter/message.dart';
import 'package:assignment1_flutter/message_contant.dart';
void main(){

  runApp(DemoWhatsappChat());
}

class DemoWhatsappChat extends StatelessWidget {
  const DemoWhatsappChat();

  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
        Scaffold(
          appBar:AppBar(
            backgroundColor: Color(0xFF03141f),
            leading: Icon(Icons.arrow_back)
            ,//leading
            title: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/person.jpg'),
                ),
                SizedBox(width: 15,),
                Text(
                  'Person',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),

              ],//children
            ),
            actions: [
              Icon(Icons.videocam),
              SizedBox(width: 15,),
              Icon(Icons.phone),
              SizedBox(width: 15,),
              Icon(Icons.more_vert),
            ],
          ),
          body:
          Stack(
            children: [
              Image.asset('images/background.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              Column(
                children: [
                  SizedBox(height: 50,),
                  Massage(message: "This My First Message", imageUrl: 'images/person1.jpg',),
                  SizedBox(height: 50,),
                  Massage(message: "This My Second Message", imageUrl: 'images/person2.jpg', send: true,),
                  Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(decoration: InputDecoration(
                          hintText: 'type a meassage' ,
                          hintStyle: TextStyle(color: Colors.grey ,
                            fontSize: 18,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.white,)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.white,)
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.white,)
                          ),
                          suffixIcon:Icon(Icons.attach_file , color: Colors.white,) ,
                          prefixIcon: Icon(Icons.tag_faces_outlined ,
                            color: Colors.white,) ,
                        ) ,
                        ),
                      ),
                      SizedBox(width: 5,),
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: FloatingActionButton(onPressed: (){} , child: Icon(Icons.mic),
                          backgroundColor: Color(0xFF03141f),
                          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(color: Colors.white,)
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15,)
                ],//children
              )
            ],
          ),
        )
        ,//home
      )
    ;
  }
}
