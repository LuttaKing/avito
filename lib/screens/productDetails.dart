import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProductDetails extends StatefulWidget {
  String imageUrl;
  String price;
  String itemname;
  String itemDescription;
  ProductDetails({this.imageUrl,this.price,this.itemDescription,this.itemname});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Container(
            color: Colors.grey[200],
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Container(
                height: MediaQuery.of(context).size.height*0.37,
                      width: MediaQuery.of(context).size.width*0.9,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(topLeft:Radius.circular(12),bottomLeft:Radius.circular(12),),
                                        color: Colors.grey,
                                        image: DecorationImage(
                                              image: CachedNetworkImageProvider(''),
                                              fit: BoxFit.fill,  ),
                                          )),

                                          Row(children: <Widget>[
                                            Text('50000'),

                                            SizedBox(height: 30,width: 200,child: FlatButton(onPressed: null,
                                            child: Text('Booster'),),)
                                          ],),

                                          Text('Item Name'),

                                          Row(children: <Widget>[
                                                             Row(
                                children: <Widget>[
                                  Icon(Icons.location_on,color: Colors.grey,size: 12,),
                                  Text('location',style: TextStyle(color: Colors.grey,fontSize: 10),),
                                ],
                              ),

                              SizedBox(width: 20,),
                           Row(
                             children: <Widget>[
                               
                               Icon(Icons.timer,color: Colors.grey,size: 12,),
                               Text('time',style: TextStyle(color: Colors.grey,fontSize: 10)),
                             ],
                                          )],)
            ],),
      ),
    );
  }
}