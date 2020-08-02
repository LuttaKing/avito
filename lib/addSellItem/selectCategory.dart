import 'dart:io';
import 'package:avito/searchWidgets.dart';
import 'package:avito/sellListProvider/AdItemListNotifier.dart';
import 'package:provider/provider.dart';
import 'package:avito/addSellItem/fillItemDetails.dart';
import 'package:flutter/material.dart';

class SelectCategory extends StatefulWidget {
  List<File> listOfImages;
  SelectCategory({this.listOfImages});
  @override
  _SelectCategoryState createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
   

      String radioItem = '';

  @override
  Widget build(BuildContext context) {
     return Consumer<AdItemNotifier>(
              builder: (context, adlistNotifier, anything) {
    return Scaffold(
       appBar: AppBar(title: Text('Pick Category',style: TextStyle(color: Colors.black,fontFamily: 'Ptsans'),),
      backgroundColor: Colors.grey[100],
      centerTitle: true,
      leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){Navigator.pop(context);},),),
      backgroundColor: Colors.grey[100],
        bottomNavigationBar: BottomAppBar(
    color: Colors.white,
    child: _bottomButton(),
    elevation: 0,
  ),
      body: Center(child: Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
SizedBox(height:170),
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Text('Pick a category'),
),

Padding(
  padding: const EdgeInsets.all(8.0),
  child:   dropDownButton(adlistNotifier),
),

Padding(
  padding: const EdgeInsets.all(6.0),
  child:   Text('Type of transaction'),
),

 Row( children: <Widget>[
                           Expanded(child: radioTile('bulsjit')),
                            Expanded(child: radioTile('vente')),
                         ],
                       ),

        ],),
      ),),
      
    );
      });
  }

  Widget radioTile(String value){
return RadioListTile(
              groupValue: radioItem,
              title: Text(value),
              value: value,
              onChanged: (val) {
                setState(() {
                  radioItem = val;
                });
              },
            );
  }

  Widget _bottomButton(){
    return  Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
             height:MediaQuery.of(context).size.height*0.07,
                width: MediaQuery.of(context).size.width*0.6,
            child: FlatButton(
            color: Colors.blue[700],child: Text('Contimue',
            style: TextStyle(color: Colors.white,fontFamily: 'Ptsans'),),onPressed: (){
             
 Navigator.push(   context,
                               MaterialPageRoute(
                               builder: (context) => ItemDetailForm(category: Provider.of<AdItemNotifier>(context, listen: false).pickedCategory,
                               listOfImages: widget.listOfImages,),
                               ));
          },),),
        );
  }

  Widget dropDownButton(var notifier){
    return Center(
                child: Container(width: 300,
                  decoration: BoxDecoration(
                     color: Colors.white,
                      borderRadius: BorderRadius.all(
        Radius.circular(5.0) //      
    ),
  ),
                  child: 
                  DropdownButton<String>(
                   
                     underline: SizedBox(),
                 icon: Row(
                        children: <Widget>[
                          SizedBox(width: 50,),
                          Icon(Icons.keyboard_arrow_down,color: Colors.grey,),
                        ],
                      ),
                         hint:Padding(
                           padding: const EdgeInsets.only(left:8.0),
                           child: Text(notifier.pickedCategory),
                         ),
            items: SearchWidgetValues().frenchCategoryandSubs.map((String pickVal) {
             
                  return  DropdownMenuItem(
                    value: pickVal,
                    child: SearchWidgetValues().frenchCategory.contains(pickVal) ? 
                    Column(
                      children: <Widget>[
                        Text(pickVal.toUpperCase(),style: TextStyle(color: Colors.grey[600],fontFamily: 'Ptsans',fontSize: 15),),
                        Divider(color: Colors.orange[900],),
                      ],
                    )
                    :Text(pickVal,style: TextStyle(fontFamily: 'Ptsans',fontSize: 15)),
                  );
            }).toList(),
            onChanged: (val) {
                    Provider.of<AdItemNotifier>(context, listen: false).setCategory(val);
            },
          ),
                ),
              );
  }
}