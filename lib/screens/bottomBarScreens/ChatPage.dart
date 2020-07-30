import 'package:avito/AuthFolder/Login.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(color: Colors.white,child: holder(),
        
      ),
    );
  }

   Widget holder(){
    return Column(children: <Widget>[

      Padding(
        padding: const EdgeInsets.all(22.0),
        child: Center(child: Text('Your chats with other customers will appear here',style: TextStyle(color: Colors.blueGrey,fontFamily: 'Ptsans',fontSize: 18.5),)),
      ),

       Container(
                   height: MediaQuery.of(context).size.height*0.37,
                  width: MediaQuery.of(context).size.width*0.72,
                              decoration: BoxDecoration(    
                                  image: DecorationImage(
                                        image: CachedNetworkImageProvider('https://firebasestorage.googleapis.com/v0/b/easylife-43279.appspot.com/o/avito%2Fundraw_chatting_2yvo.png?alt=media&token=76770098-7601-45a1-badc-b8cd28462793'),
                                        fit: BoxFit.fill,  ),
                                    )),
                                    SizedBox(height: 30,),

                       Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container( decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        color: Color(0xffb078080)
                                          ),
      
        child: SizedBox(width: MediaQuery.of(context).size.width*0.7,
        child: FlatButton(onPressed: (){
          Navigator.push(
                                context,
                                 MaterialPageRoute(fullscreenDialog: true,
                                 builder: (context) => LoginPage(),
                                 ));
        },
        
        child: Text('Login',style: TextStyle(color: Colors.white,fontFamily: 'Ptsans'),),
        ),),
      ),
    ),              
    ],);
  }
}