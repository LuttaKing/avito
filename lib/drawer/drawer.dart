
import 'package:avito/addSellItem/selectImages.dart';
import 'package:flutter/material.dart';
import 'package:avito/drawer/drawerFunctions.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MyDrawer extends StatefulWidget {
 
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {

 
  
  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: MediaQuery.of(context).size.width*0.85,
      
      child: Drawer(
  
  child: Container(
      color:  Colors.white,
      child: ListView(
        
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
        
_drawerHeader(),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container( decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(5)),
                                        color: Color(0xffb078080)
                                          ),
      
        child: SizedBox(width: 300,child: FlatButton(onPressed:(){
 Navigator.push(
                                context,
                                 MaterialPageRoute(
                                 builder: (context) => SelectImages(),
                                 ));
        },
        
        child: Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
          Icon(Icons.photo_camera,color: Colors.white,),
          SizedBox(width: 20),
          Text('Create Ad',style: TextStyle(color: Colors.white),),
        ],),
        ),),
      ),
    ),
          _listTile('Account',Icons.person_outline,Color(0xffb078080),context),
          _listTile('Chat',Icons.chat,Colors.blue,context),
          _listTile('My Favourites',Icons.favorite_border,Colors.pink,context),
         _listTile('Language',Icons.outlined_flag,Colors.green,context),
         _listTile('Contact Us',Icons.call,Colors.purple,context),
          _listTile('Rate App',Icons.rate_review,Colors.yellow,context),
          
          _listTile('Share App',Icons.share,Colors.orange,context),
         
          Divider(indent: 20,endIndent: 20,color: Colors.green ,),
       
         _listTile('About App',Icons.info,Colors.grey,context),
         _listTile('Terms and Conditions',Icons.info,Colors.grey,context),

        ],
      ),
  ),
),
    );
  }

  Widget _listTile(String title, IconData icon,Color color,BuildContext context){
    return ListTile(
            title: Text(title,style: TextStyle(fontFamily: 'Ptsans' ,color: Colors.grey[800] )),
            leading: Icon(icon,color: color),
            onTap: () {
              if (title=='Account') {
                Navigator.pop(context);
                goToLoginPage(context);
               
              } else if(title=='Chat'){
               goToChatTab(context);
              }else if(title=='My Favourites'){
                goToAccountTab(context);

              }else if(title=='Language'){
                openSettingsPage(context);
              }else if(title=='Information'){
                aboutPage(context);
              }else if(title=='Contact Us'){
                sendEmail();
              }else if(title=='Share App'){
                shareAppLink();
              }
            },
          );
  }

  Widget _drawerHeader(){
    
    return   Container(height: MediaQuery.of(context).size.height*0.26,
      child: DrawerHeader(
        margin: EdgeInsets.only(bottom: 0),
              child: Center(
                child: Column(
                  children: <Widget>[
                  
          Container(
                    height: MediaQuery.of(context).size.height*0.168,
                    width: MediaQuery.of(context).size.width*0.5,
                    alignment: Alignment.bottomCenter,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                    color: Colors.white,
                                    image: DecorationImage(
                                          image: CachedNetworkImageProvider('https://firebasestorage.googleapis.com/v0/b/easylife-43279.appspot.com/o/avito%2Fundraw_shopping_app_flsj.png?alt=media&token=74a93701-3b23-4dcf-ad71-d143c3bc194a'),
                                          fit: BoxFit.fill,  ),
                                      )),
        //Color(0xffbf45d48)
                  
                    Text('Everything you need in one place',style: TextStyle(color: Color(0xffbf45d48),fontSize: 12)),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white ,
              ),
            ),
    );
  }

}