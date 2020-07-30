import 'dart:io';

import 'package:avito/addSellItem/fillItemDetails.dart';
import 'package:flutter/material.dart';

class SelectCategory extends StatefulWidget {
  List<File> listOfImages;
  SelectCategory({this.listOfImages});
  @override
  _SelectCategoryState createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
   String pickedCategory=' Pick Category';
   List<String> _category=['Computer and Multimedia','Vehicle','Immovable','Home and Garden','Real Estate','Employment and Dervices','Clothing Wellbieng','Leisure','Companies'];
    List<String> _categoryAndSubcategories=['Computer and Multimedia','Phones','Image and Sound','Laptop','Video games','Desktops','Computer Accesories','Camera','Tablet','Television',

    'Vehicle','Cars','Motorcycles','Vehicle Parts','Boats','Bikes','Proffesional Vehicles',
    'Immovable','ApartMents','Houses and Villas','Holiday Rents','Offices','Stores and Business','Land and Farms','Roomates',
    'Home and Garden','Appliances and Tableware','Furniture and Decoration','Garden and tools',

    
    'Employment and Services','Jobs','Job Applications','Services','Courses and Training','Call Center','HouseKeepers and Drivers','House Work','Frames','Internship'
    'Clothing Wellbeing','For Children','Clothing','Bags','Beauty','Equipment for babies','Shoes','Watches and Jewels',
    'Leisure','Sports and Leisure','Animals','Movies Books Magazines','Travel and Tickets','Art','Musical Instruments',
    'Companies','Professional Equipment','Business and Commercial','Stock and Wholesale'];

      String radioItem = '';

  @override
  Widget build(BuildContext context) {
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
  child:   dropDownButton(),
),

Padding(
  padding: const EdgeInsets.all(6.0),
  child:   Text('Type of transaction'),
),

 Row(
                         children: <Widget>[
                           Expanded(child: radioTile('bulsjit')),
                            Expanded(child: radioTile('vente')),
                         ],
                       ),
                 

       

        ],),
      ),),
      
    );
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
 Navigator.push(
                              context,
                               MaterialPageRoute(
                               builder: (context) => ItemDetailForm(category: pickedCategory,listOfImages: widget.listOfImages,),
                               ));
          },),),
        );
  }

  Widget dropDownButton(){
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
                           child: Text(pickedCategory),
                         ),
            items: _categoryAndSubcategories.map((String pickVal) {
             
                  return  DropdownMenuItem(
                    value: pickVal,
                    child: _category.contains(pickVal) ? 
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
                  setState(() {
                    pickedCategory=val;
                  });
            },
          ),
                ),
              );
  }
}