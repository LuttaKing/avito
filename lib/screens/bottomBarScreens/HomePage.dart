import 'package:avito/common.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:share/share.dart';
import 'package:shared_preferences/shared_preferences.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
 super.initState();
 readView();
  }
  bool isNotGrid=true;

   List picsForCorousel=[
    'https://firebasestorage.googleapis.com/v0/b/easylife-43279.appspot.com/o/facts%2Flife.jpeg?alt=media&token=ed3aba11-2c08-4399-8c2a-81a2814b2c02',
    'https://firebasestorage.googleapis.com/v0/b/easylife-43279.appspot.com/o/facts%2Frandom.png?alt=media&token=59f3702e-27f8-437c-aa9f-2cf5449a9411'
  ];
  
List shopObjects = [
    {'name':'Iphone 11 pro max 2020','price':'450','location':'Morocoo','time':'10:08','picUrl':'https://firebasestorage.googleapis.com/v0/b/easylife-43279.appspot.com/o/facts%2Frandom.png?alt=media&token=59f3702e-27f8-437c-aa9f-2cf5449a9411'}, 
  {'name':'Iphone 11 pro max 2020','price':'450','location':'Morocoo','time':'10:08','picUrl':'https://firebasestorage.googleapis.com/v0/b/easylife-43279.appspot.com/o/facts%2Flife.jpeg?alt=media&token=ed3aba11-2c08-4399-8c2a-81a2814b2c02'}, 
  {'name':'Iphone 11 pro max 2020','price':'450','location':'Morocoo','time':'10:08','picUrl':'https://firebasestorage.googleapis.com/v0/b/easylife-43279.appspot.com/o/facts%2Fworld.jpeg?alt=media&token=3ff4053a-3dc0-4fef-9966-2ebfedf2272e'}, 
{'name':'Iphone 11 pro max 2020','price':'450','location':'Morocoo','time':'10:08','picUrl':'https://firebasestorage.googleapis.com/v0/b/easylife-43279.appspot.com/o/facts%2Fanimals.jpeg?alt=media&token=1c34f22c-8735-4e9d-a8d7-be6103e07b10'}, 
{'name':'Iphone 11 pro max 2020','price':'450','location':'Morocoo','time':'10:08','picUrl':'https://firebasestorage.googleapis.com/v0/b/easylife-43279.appspot.com/o/sliders%2Fpexels-photo-106343.jpeg?alt=media&token=bc55f147-4ad5-4641-9f39-25e3b25f6ebc'}, ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
Container(
  color: Colors.white,
  child:   Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:18.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: <Widget>[
                      Text('Bold Moroco Text',style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'New'),),
                      Text('Morocco Text',style: TextStyle(color: Colors.grey,fontSize: 12,fontFamily: 'New'),)
                    ],),
                  ),
  
                  Row(
                    children: <Widget>[
                         IconButton(icon: Icon(Icons.timer_off,color: Colors.grey[400],),onPressed: (){},), 
                   isNotGrid ?   IconButton(icon: Icon(MdiIcons.viewDashboardOutline,
                      color: Colors.grey[400],),onPressed: (){
                    saveViewType('GridView');
                          },)
                          :
                          IconButton(icon: Icon(MdiIcons.viewList,
                      color: Colors.grey[400],),onPressed: (){
                    saveViewType('ListView');
                          },) 
//icons.more_vert 
                        ],
                  ),
  
                ],),
),
          Padding(
            padding: const EdgeInsets.only(top:10.0),
            child: Container(
              color: Colors.orange[200].withOpacity(0.34),
              child: Column(
                children: <Widget>[
                  Row( 
                    children: <Widget>[
                      Icon(Icons.mic,color: Colors.redAccent,), 
                      Text('Premium Ads',style: TextStyle(color: Colors.redAccent),),
                    ],
                  ),

                  Container(
                child: Padding(
                    padding: EdgeInsets.only(top:1.0),
                    child: CarouselSlider.builder(
                      itemCount: picsForCorousel.length, 
                    itemBuilder: (BuildContext context, int index) {  
                    return Container(
                    alignment: Alignment.bottomCenter,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(3)),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                            image: CachedNetworkImageProvider(picsForCorousel[index]),
                                            fit: BoxFit.fill,  ),
                                        ),
                                        child: Align(alignment: Alignment.bottomLeft,
                                                                                  child: Column(
                               
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                           children: <Widget>[
                                                Padding(
                                                  padding: const EdgeInsets.all(3.0),
                                                  child: Container(decoration: BoxDecoration(color: Colors.black.withOpacity(0.5),borderRadius: BorderRadius.all(Radius.circular(10))),
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(1.0),
                                                    child: Text('Iphone 11 pro max 2020',style: TextStyle(color: Colors.white,fontFamily: 'New'),),
                                                  )),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top:1.0,bottom: 1),
                                                  child: Container(decoration: BoxDecoration(color: Colors.orange[700],borderRadius: BorderRadius.only(topRight:Radius.circular(7),bottomRight: Radius.circular(7))),child: Padding(
                                                    padding: const EdgeInsets.all(0.5),
                                                    child: Text('4000 DH',style: TextStyle(color: Colors.white,fontSize: 17,fontFamily: 'New',fontWeight: FontWeight.bold)),
                                                  )),
                                                ),
                                              ],
                                            ),
                                        ),);

                    }, 
                    options: CarouselOptions(
                  height: 150,
                  aspectRatio: 16/10,
                  viewportFraction: 0.7,
                  initialPage: 0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 4),
                 ),
                    
                    ),
                  ),
              ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Top Ads',style: TextStyle(color: Colors.redAccent[700],fontFamily: 'Fred'),),

                Text('>>>',style: TextStyle(color: Colors.grey),),
              ],
            ),
          ),
isNotGrid ?
          ListView.builder(
             physics: NeverScrollableScrollPhysics(),
         shrinkWrap: true,
            itemCount: shopObjects.length,
          itemBuilder: (BuildContext context,int index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height:MediaQuery.of(context).size.height*0.13,
                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(12)),
                                      color: Colors.white,
                                        ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    //
                    Container(
                    width: MediaQuery.of(context).size.width*0.325,
                           decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topLeft:Radius.circular(12),
                                      bottomLeft:Radius.circular(12),),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                            image: CachedNetworkImageProvider(shopObjects[index]['picUrl']),
                                            fit: BoxFit.fill,  ),
                                        )),

                       Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets.only(left:4.0),
                                                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: <Widget>[

                           Text(shopObjects[index]['price'],style: TextStyle(color: Colors.blue[700],
                           fontFamily: 'New',fontSize: 18)),

                           Text(shopObjects[index]['name'],style: TextStyle(fontFamily: 'Ptsans',fontSize: 16),),

                           Row(children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(Icons.location_on,color: Colors.redAccent,size: 12,),
                                  Text(shopObjects[index]['location'],style: TextStyle(color: Colors.grey,fontSize: 10),),
                                ],
                              ),

                              SizedBox(width: 20,),

                           Row(
                             children: <Widget>[
                               
                               Icon(Icons.timer,color: Colors.redAccent,size: 12,),
                               Text(shopObjects[index]['time'],
                               style: TextStyle(color: Colors.grey,fontSize: 10)),
                             ],
                           ),
                           ],),


                         ],),
                                                ),
                       ) ,
                       Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[
                          IconButton(icon: Icon(Icons.share),onPressed: (){shareItemLink();},),

                          IconButton(icon: Icon(MdiIcons.heartOutline,color: Colors.redAccent,),
                          onPressed: (){
                            notifyFlush(context,'Successfully added to Favourites',2);
                          },),
                       ],)                

                  ],),),
                );
          },)
          :
          gridView(),
 ],
      ),
    );
  }

  Widget gridView(){
   return ListView.builder(
             physics: NeverScrollableScrollPhysics(),
         shrinkWrap: true,
            itemCount: shopObjects.length,
          itemBuilder: (BuildContext context,int index){
                return Padding(
                  padding: const EdgeInsets.only(left:16.0,right: 16.0,top: 7.5,bottom: 4),
                  child: Container(height: MediaQuery.of(context).size.height*0.22,
                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(12)),
                                      color: Colors.white,
                                        ),
                  child: Stack(
                  
                    children: <Widget>[
                    //
                    Container( height: MediaQuery.of(context).size.height*0.145,
                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topLeft:Radius.circular(12),topRight: Radius.circular(12)),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                            image: CachedNetworkImageProvider(shopObjects[index]['picUrl']),
                                            fit: BoxFit.fill,  ),
                                        )),

                       Positioned(top: 15,left: 11,child: 
                       Container(decoration: BoxDecoration(color: Colors.blue[700],borderRadius: BorderRadius.all(Radius.circular(10))),child: Padding(
                         padding: const EdgeInsets.all(2.0),
                         child: Text(shopObjects[index]['price']+' DH',style: TextStyle(fontSize: 16,fontFamily: 'Ptsans',color: Colors.white)),
                       ))),

                       Positioned(bottom: 28,left: 11,child: Text(shopObjects[index]['name'],style: TextStyle(fontSize: 17),)),

                       Positioned(bottom: 3,left: 11,
                                                  child: Row(children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.location_on,color: Colors.redAccent,size: 12,),
                                Text(shopObjects[index]['location'],style: TextStyle(color: Colors.grey,fontSize: 10),),
                              ],
                            ),

                            SizedBox(width: 20,),

                         Row(
                           children: <Widget>[
                             
                             Icon(Icons.timer,color: Colors.redAccent,size: 13,),
                             Text(shopObjects[index]['time'],
                             style: TextStyle(color: Colors.grey,fontSize: 11)),
                           ],
                         ),
                         ],),
                       ) ,
                       Positioned(top:3,right: 8,child: CircleAvatar(backgroundColor: Colors.grey.withOpacity(0.48),child: IconButton(icon: Icon(Icons.share,size: 17,color: Colors.white,),onPressed: (){shareItemLink();},))),

                       Positioned(right: 8,bottom: 0,child: IconButton(
                         icon: Icon(MdiIcons.heartOutline,
                         color: Colors.redAccent,),onPressed:(){
                                                       notifyFlush(context,'Successfully added to Favourites',2);

                         },))                

                  ],),),
                );
          },);
  }

  void shareItemLink(){
Share.share('Hey, check out this item at https://example.com');
  }

  saveViewType(String view) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('gridType', view);
    readView();
  }

 readView() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
   
    String stringValue = prefs.getString('gridType') ?? 'Notset';
    if (stringValue=='GridView') {
      setState(() {
        isNotGrid=false;
      });
    } else {
      setState(() {
        isNotGrid=true;
      });
    }
    return stringValue;
  }
}