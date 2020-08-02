import 'package:flutter/material.dart';
import 'package:avito/sellListProvider/AdItemListNotifier.dart';
import 'package:provider/provider.dart';
Widget dropDownLocation(BuildContext context){
    return Center(
                child: Container(width: 300,
                  decoration: BoxDecoration(
                     color: Colors.white,
                      borderRadius: BorderRadius.all(
        Radius.circular(5.0) //      
    ),
    border: Border.all(color: Colors.blue),
  ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      DropdownButton<String>(
                        
                         underline: SizedBox(),
                      icon: Row(
                        children: <Widget>[
                          SizedBox(width: 160,),
                          Icon(Icons.location_on,color: Colors.blueGrey,),
                        ],
                      ),
                             hint:Padding(
                               padding: const EdgeInsets.only(left:8.0),
                               child: Text( Provider.of<AdItemNotifier>(context, listen: false).pickedLocation),
                             ),
            items: <String>['Ahgsdgh', 'Bsdfghsfgh', 'Cghsfsgh', 'Dfgghdfgh'].map((String pickVal) {
             
                      return  DropdownMenuItem<String>(
                        value: pickVal,
                        child:  Text(pickVal),
                      );
            }).toList(),
            onChanged: (val) {
                      Provider.of<AdItemNotifier>(context, listen: false).setLocation(val);            },
          ),
         
                    ],
                  ),
                ),
              );
  }

  Widget box(BuildContext context){
    return SizedBox(   height:MediaQuery.of(context).size.height*0.023,);
  }