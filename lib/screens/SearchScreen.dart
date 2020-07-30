import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
      String radioItem = '';

  String value='';
  String dropDownValue='Pick Category';
  List<String> _category=['Computer and Multimedia','Vehicle','Immovable','Home and Garden','Real Estate','Employment and Dervices','Clothing Wellbieng','Leisure','Companies'];
    List<String> _categoryAndSubcategories=['Computer and Multimedia','Phones','Image and Sound','Laptop','Video games','Desktops','Computer Accesories','Camera','Tablet','Television',

    'Vehicle','Cars','Motorcycles','Vehicle Parts','Boats','Bikes','Proffesional Vehicles',
    'Immovable','ApartMents','Houses and Villas','Holiday Rents','Offices','Stores and Business','Land and Farms','Roomates',
    'Home and Garden','Appliances and Tableware','Furniture and Decoration','Garden and tools',

    'Employment and Services','Jobs','Job Applications','Services','Courses and Training','Call Center','HouseKeepers and Drivers','House Work','Frames','Internship'
    'Clothing Wellbeing','For Children','Clothing','Bags','Beauty','Equipment for babies','Shoes','Watches and Jewels',
    'Leisure','Sports and Leisure','Animals','Movies Books Magazines','Travel and Tickets','Art','Musical Instruments',
    'Companies','Professional Equipment','Business and Commercial','Stock and Wholesale'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
       leading: IconButton(icon: Icon(Icons.close,color: Colors.black,),onPressed: (){Navigator.pop(context);},),
      title: Text('Filter Search',style: TextStyle(fontFamily: 'Ptsans',color: Colors.black),),
      centerTitle: true,
      bottom:  PreferredSize(
            preferredSize: Size.fromHeight(55.0) ,
            child: Container(
              height:65.0, 
              child:  Padding(
                padding: const EdgeInsets.only(left:28.0,right: 28,bottom: 8),
                child: TextField( 
                   onChanged: (text) {
                      value = text;
                    },
                   decoration: InputDecoration(hintText: ' Search ...',
                     suffixIcon: IconButton(icon: Icon(Icons.close,color: Colors.grey,),
                     onPressed: null,),
                            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(14)))
                          ),
                    ),
              )
              ),
          ),
      ),
      body: Container(color: Colors.grey[200],
             
          child: Center(
            child: ListView(
      children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text('Category',style: TextStyle(),),
      ),
                dropDownButton(),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text('Location',style: TextStyle(),),
      ),
        dropDownButton(),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text('Type of announcement',style: TextStyle(),),
      ),
     
                       Row(mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                           Expanded(child: radioTile('bulsjit')),
                            Expanded(child: radioTile('vente')),
                         ],
                       ),
                 
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text('Price',style: TextStyle(),),
      ),
      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         priceTextField('Min'),
         SizedBox(width: 20,),
                  priceTextField('Max'),

      ],),
       Spacer(),
 Center(child:  Padding(
   padding: const EdgeInsets.only(top:28.0),
   child: Container(decoration: BoxDecoration(
                 color: Color(0xffb078080),
                    borderRadius: BorderRadius.all(
          Radius.circular(5.0) //      
    ),
  ),child: SizedBox(width: 290,height: 50,
  child: FlatButton(onPressed: null,
  child: Text('Search',style: TextStyle(fontFamily: 'New',color: Colors.white),),),)),
 ))

                ],),
          ),
        ),
    );
  }

   Widget radioTile(String value){
return RadioListTile(
  activeColor: Colors.blue,
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
  Widget priceTextField(String hintText){
    return Container(
                 color: Colors.white,
                 width: 120,
                 height: 50,
                 child: TextField( 
                   
                   keyboardType:TextInputType.number,
                    onChanged: (text) {
                        value = text;
                      },
                     // style: TextStyle(color: Colors.red, fontWeight: FontWeight.w300),
                     decoration: InputDecoration(
                       
                      hintText: hintText,
                              border: OutlineInputBorder()
                            ),
                      ),
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
    border: Border.all(color: Colors.grey),
  ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      DropdownButton<String>(
                         underline: SizedBox(),
                      icon: Row(
                        children: <Widget>[
                          
                          Icon(Icons.keyboard_arrow_down,color: Colors.grey,),
                        ],
                      ),
                             hint:Text(dropDownValue),
            items: _categoryAndSubcategories.map((String pickVal) {
             
                      return  DropdownMenuItem<String>(
                        value: pickVal,
                        child:  _category.contains(pickVal) ? 
                    Column(
                      children: <Widget>[
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                           
                            Icon(Icons.keyboard_arrow_right,size: 20,color: Colors.orange,),
                            Text(pickVal.toUpperCase(),style: TextStyle(color: Colors.grey[600],fontFamily: 'Ptsans',fontSize: 15),),
                          ],
                        ),
                        Divider(color: Colors.orange[800],),
                      ],
                    )
                    :Text(pickVal,style: TextStyle(fontFamily: 'Ptsans',fontSize: 15),),
                      );
            }).toList(),
            onChanged: (val) {
                      setState(() {
                        dropDownValue=val;
                      });
            },
          ),
         
                    ],
                  ),
                ),
              );
  }
}