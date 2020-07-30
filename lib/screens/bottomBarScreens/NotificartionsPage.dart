import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class NotifiPage extends StatefulWidget {
  @override
  _NotifiPageState createState() => _NotifiPageState();
}

class _NotifiPageState extends State<NotifiPage> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white,
      child: holder(),
    );
  }

  Widget holder(){
    return Column(children: <Widget>[
SizedBox(height: 50,),
      Padding(
        padding: const EdgeInsets.all(22.0),
        child: Center(child: Text('Notifications will appear here',style: TextStyle(color: Colors.blueGrey,fontSize: 18.5,fontFamily: 'Ptsans'),)),
      ),
       Container(
                  height: 280,
                  width: 280,
                              decoration: BoxDecoration(    
                                  image: DecorationImage(
                                        image: CachedNetworkImageProvider('https://firebasestorage.googleapis.com/v0/b/easylife-43279.appspot.com/o/avito%2Fundraw_push_notifications_im0o.png?alt=media&token=4ab96cf9-94d1-4ad9-bc97-67589fa38370'),
                                        fit: BoxFit.fill,  ),
                                    )),
                                    SizedBox(height: 30,),

                          
    ],);
  }
}