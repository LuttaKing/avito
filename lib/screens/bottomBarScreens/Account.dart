import 'package:avito/AuthFolder/Login.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
    bool isLoggedIn=false;
@override
  void initState() {
 super.initState();
 readAuthStatus();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height:  MediaQuery.of(context).size.height*0.8,
        child: TabBarView(
                children: [
                 Center(child: firstTab()),
                  Center(child: secondTab()),
                  Center(child: thirdTab()),
                ],
              ),
      ),
    );
  }

  Widget firstTab(){

    if (isLoggedIn) {
      return Container(height: 100,width: 100,
      color: Colors.red,child: Text('User is Logged In'),);
    } else {
    
    return ListView(children: <Widget>[
SizedBox(height: 30,),
      Padding(
        padding: const EdgeInsets.all(28.0),
        child: Text('Create Ads and they will appear here',style: TextStyle(color: Colors.redAccent,fontSize: 18.5,fontFamily: 'Ptsans'),),
      ),

       Padding(
         padding: const EdgeInsets.only(left:38.0,right: 38),
         child: Container(
                    height: MediaQuery.of(context).size.height*0.32,
                   
                                decoration: BoxDecoration(    
                                    image: DecorationImage(
                                          image: CachedNetworkImageProvider('https://firebasestorage.googleapis.com/v0/b/easylife-43279.appspot.com/o/avito%2Fundraw_circuit_sdmr.png?alt=media&token=9d3a8ad8-411b-4e27-8a05-d013f2b4d378'),
                                          fit: BoxFit.fill,  ),
                                      )),
       ),
                                    SizedBox(height: 30,),

                       Padding(
      padding: const EdgeInsets.all(38.0),
      child: Container( decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        color: Color(0xffb078080)
                                          ),
      
        child: SizedBox(width: MediaQuery.of(context).size.width*0.7,child: FlatButton(onPressed:(){goToLoginPage();},
        
       child: Text('Login',style: TextStyle(color: Colors.white,fontFamily: 'Ptsans'),),
        ),),
      ),
    ),              
    ],);}
  }

  Widget secondTab(){
    return ListView(children: <Widget>[
SizedBox(height: 30,),
      Padding(
        padding: const EdgeInsets.only(left:38.0,right: 38),
        child: Text('The items your liked will appear here',style: TextStyle(color: Colors.redAccent,fontFamily:'Ptsans',fontSize: 18.5),),
      ),
       Container(
                   height: MediaQuery.of(context).size.height*0.32,
                 
                              decoration: BoxDecoration(    
                                  image: DecorationImage(
                                        image: CachedNetworkImageProvider('https://firebasestorage.googleapis.com/v0/b/easylife-43279.appspot.com/o/avito%2Fundraw_order_confirmed_aaw7.png?alt=media&token=6a84820b-4d6c-410b-9603-ae589d35ad97'),
                                        fit: BoxFit.fill,  ),
                                    )),
                                    SizedBox(height: 30,),

                       Padding(
      padding: const EdgeInsets.all(38.0),
      child: Container( decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        color: Color(0xffb078080)
                                          ),
      
        child: SizedBox(width: MediaQuery.of(context).size.width*0.7,child: FlatButton(onPressed: (){
          goToLoginPage();
        },
        
         child: Text('Login',style: TextStyle(color: Colors.white,fontFamily: 'Ptsans'),),
        ),),
      ),
    ),              
    ],);
  }

  Widget thirdTab(){
    return ListView(children: <Widget>[
SizedBox(height: 30,),
      Padding(
        padding: const EdgeInsets.only(left:38.0,right: 38),
        child: Text('You can save searches and they will appear here',style: TextStyle(color: Colors.redAccent,fontFamily: 'Ptsans',fontSize: 18.5),),
      ),

       Container(
                  height: MediaQuery.of(context).size.height*0.32,
                
                              decoration: BoxDecoration(    
                                  image: DecorationImage(
                                        image: CachedNetworkImageProvider('https://firebasestorage.googleapis.com/v0/b/easylife-43279.appspot.com/o/avito%2Fundraw_house_searching_n8mp.png?alt=media&token=63a68a89-695e-459d-bd26-b75f12699032'),
                                        fit: BoxFit.fill,  ),
                                    )),
                                    SizedBox(height: 30,),

                       Padding(
      padding: const EdgeInsets.all(38.0),
      child: Container( decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        color: Color(0xffb078080)
                                          ),
      
        child: SizedBox(width: MediaQuery.of(context).size.width*0.7,child: FlatButton(onPressed: (){
          goToLoginPage();
        },
        
        child: Text('Login',style: TextStyle(color: Colors.white,fontFamily: 'Ptsans'),),
        ),),
      ),
    ),              
    ],);
  }

  void goToLoginPage(){
    Navigator.push(
                                context,
                                 MaterialPageRoute(fullscreenDialog: true,
                                 builder: (context) => LoginPage(),
                                 ));
  }

  readAuthStatus()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
   
    String stringValue = prefs.getString('Logged In') ?? 'Notset';
    if (stringValue=='YES') {
      setState(() {
        isLoggedIn=true;
      });
    } else {
      setState(() {
        isLoggedIn=false;
      });
    }
    return stringValue;
  }
}