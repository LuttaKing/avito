import 'package:avito/AuthFolder/Login.dart';
import 'package:avito/screens/NavPage.dart';
import 'package:flutter/material.dart';

import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
 void goToLoginPage(BuildContext context){
    Navigator.push(
                                context,
                                 MaterialPageRoute(fullscreenDialog: true,
                                 builder: (context) => LoginPage(),
                                 ));
  }

 goToChatTab(BuildContext context){
    Navigator.push(
                                context,
                                 MaterialPageRoute(
                                 builder: (context) => NavPage(pageIndex: 2,),
                                 ));
  }

  goToAccountTab(BuildContext context){
    Navigator.push(
                                context,
                                 MaterialPageRoute(
                                 builder: (context) => NavPage(pageIndex: 1,),
                                 ));
  }

  showPrivacyPolicy(BuildContext context){

  Widget okButton = FlatButton(
    color: Colors.pink[100],
    child: Text("close"),
    onPressed: () { Navigator.pop(context);},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Privacy Policy",style: TextStyle(color: Colors.pink,fontFamily: 'Ptsans',fontSize: 24),),
    content: Text('''This app does not retrieve or save any kind of data 
    from the user,all permissions requested are necessary for the app to function properly.
    
    We use advertisements in the app to fill the cost of server maintenance.
    
    All the facts,images and brands are property of their respective owners.They are used for
    education purposes only and not endorsement.
    
    We do not guarantee accuracy of the data and information nor do we have direct responsibility
    to update the information''',style: TextStyle(color: Colors.grey,fontFamily: 'Ptsans',fontSize: 16)),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );

  }

  shareAppLink(){
Share.share('Hey, check out this fun and informative app,i think you will like it https://example.com');
  }

  rateApp()async{
 const url = 'https://flutter.dev';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
  }

  aboutPage(BuildContext context){
    Navigator.pop(context);
//  showAboutDialog(
   
//         context: context,
//         applicationIcon: Image(image: AssetImage('assets/ic_launcher.png'),),
//         applicationName: 'Facto - Facts App',
        
//         applicationVersion: '0.0.1',
//         applicationLegalese: '©2020 factoapp.com',
//         children: <Widget>[
//           Padding(
//             padding: EdgeInsets.only(top: 10),
//             child: Text('A fun colourful way to read your facts',
//             style: TextStyle(fontFamily: 'Prata'),)
//           )
//         ],
//       );
  }

  openSettingsPage(BuildContext context){

// Navigator.push(
//                                 context,
//                                  MaterialPageRoute(
//                                  builder: (context) => SettingsPage(),
//                                  ));
  }

  void sendEmail() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'denilsonwash@gmail.com',
    );
    String  url = params.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print( 'Could not launch $url');
    }
  }