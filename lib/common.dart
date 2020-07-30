import 'package:flutter/material.dart';
import 'package:flushbar/flushbar.dart';


void notifyFlush(BuildContext context,String message,int duration){
Flushbar(
  flushbarPosition: FlushbarPosition.TOP,
  
  duration: Duration(seconds: duration),
  message: message,
    messageText: Center(child: Text(message, style: TextStyle(fontSize: 18.0,fontFamily: 'Ptsans' ),)),

  forwardAnimationCurve: Curves.easeIn,
  reverseAnimationCurve: Curves.easeOut,
  margin: EdgeInsets.all(15),
  borderRadius: 7,
  backgroundColor: Colors.green,
  )..show(context);
  }

 
 