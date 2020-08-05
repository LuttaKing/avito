import 'package:provider/provider.dart';
import 'package:avito/searchWidgets.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
      String radioItem = '';
  String searchValue='';

  String dropDownCategoryValue=' Select Category';
  String dropDownLocationValue=' Pick Location';
  String minimumPrice='';
  String maximumPrice='';

String _surfaceMaxValue='max';
String _surfaceMinValue='min';
String _pieceMaxValue='max';
 String _pieceMinValue='min';

  @override
  Widget build(BuildContext context) {
     return Consumer<SearchNotifier>(
              builder: (context, searchNotifier, anything) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
       leading: IconButton(icon: Icon(Icons.close,color: Colors.black,),onPressed: (){Navigator.pop(context);},),
      title: Text('Filter Search',style: TextStyle(fontFamily: 'Ptsans',color: Colors.black),),
      centerTitle: true,elevation: 0,
      bottom:  PreferredSize(
            preferredSize: Size.fromHeight(58.0) ,
            child: Container(
              height:60.0, 
              child:  Padding(
                padding: const EdgeInsets.only(left:25.0,right: 25,bottom: 7),
                child: TextField( 
                   onChanged: (text) {
                      searchValue = text;
                    },
                   decoration: InputDecoration(
                     hintText: ' Search ...',
                     suffixIcon: IconButton(icon: Icon(Icons.close,color: Colors.grey,),
                     onPressed: null,),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)))
                          ),
                    ),
              )
              ),
          ),
      ),
        bottomNavigationBar: BottomAppBar(
    color: Colors.white,
  
    child: _bottomButton(),
    elevation: 0,
  ),
      body: Container(color: Colors.grey[100],
             
          child: Center(
            child: ListView(
      children: <Widget>[
      topText('Category'),
                dropDownButton('category'),
      topText('Location'),
        dropDownButton('location'),
     
      topText('Type of Announce'),
     
                       Row(mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                           Expanded(child: radioTile('Vente')),
                            Expanded(child: radioTile('Demande')),
                         ],
                       ),
dropDownCategoryValue == 'Voitures'  ?  topText('Marque'): Container(),
                    dropDownCategoryValue == 'Voitures' ? optionalDropDown('Marque',searchNotifier) : Container(),
        dropDownCategoryValue == 'Voitures' ?  topText('Carburant'): Container(),
              dropDownCategoryValue == 'Voitures' ? optionalDropDown('Carburant',searchNotifier) : Container(),
dropDownCategoryValue == 'Voitures' || dropDownCategoryValue == 'Motos' ?  topText('KM'): Container(),
                 dropDownCategoryValue == 'Voitures' || dropDownCategoryValue == 'Motos'? optionalRowDropForCars('km',searchNotifier):Container(),
dropDownCategoryValue == 'Voitures' || dropDownCategoryValue == 'Motos' ?  topText('Year'): Container(),
                 dropDownCategoryValue == 'Voitures' || dropDownCategoryValue == 'Motos'? optionalRowDropForCars('year',searchNotifier):Container(),
////HOUSES               HOUSES
dropDownCategoryValue == 'Appartements' || dropDownCategoryValue == 'Maisons et Villas' || dropDownCategoryValue == 'Locations Vacances' || dropDownCategoryValue == 'Bureaux' || dropDownCategoryValue == 'Commerces et Affaires'|| dropDownCategoryValue == 'Colocataires' ?  topText('Surface'): Container(),
dropDownCategoryValue == 'Appartements' || dropDownCategoryValue == 'Maisons et Villas' || dropDownCategoryValue == 'Locations Vacances' || dropDownCategoryValue == 'Bureaux' || dropDownCategoryValue == 'Commerces et Affaires'|| dropDownCategoryValue == 'Colocataires' ? _optionalRowDropForHouses('surface'):Container(),
dropDownCategoryValue == 'Appartements' || dropDownCategoryValue == 'Maisons et Villas' || dropDownCategoryValue == 'Locations Vacances' || dropDownCategoryValue == 'Bureaux'  ?  topText('Pieces'): Container(),
dropDownCategoryValue == 'Appartements' || dropDownCategoryValue == 'Maisons et Villas' || dropDownCategoryValue == 'Locations Vacances' || dropDownCategoryValue == 'Bureaux'  ? _optionalRowDropForHouses('pieces'):Container(),

dropDownCategoryValue == 'Voitures' ?  topText('Puissance'): Container(),
dropDownCategoryValue == 'Voitures' ? dropDownPuissance(searchNotifier):Container(),

      topText('Price'),

      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
         priceTextField('Min'),
         priceTextField('Max'),
 ],),
        ],),
          ),
        ),
    );
     });
  }
  Widget topText(String text){
    return Padding(
        padding: const EdgeInsets.only(left:8.0,top:4,bottom: 4),
        child: Text(text,style: TextStyle(fontFamily: 'New',color: Colors.blueGrey,),),
      );
  }

   Widget radioTile(String value){
return RadioListTile(
  dense: true,
  activeColor: Colors.blue,
              groupValue: radioItem,
              title: Text(value,style: TextStyle(fontSize: 15),),
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
                 width: 140,height: 50,
                 child: TextField( 
                 keyboardType:TextInputType.number,
                    onChanged: (text) {
                       if (hintText=='Min') {
                         minimumPrice=text;
                       }else{
                         maximumPrice=text;
                       }
                      },
                     decoration: InputDecoration(
                      hintText: hintText,
                      hintStyle: TextStyle(fontSize: 15),
                              border: OutlineInputBorder()
                            ),
                      ),
               );
  }

  Widget dropDownButton(String id){
    return Center(child: Container(width: 300,
                  decoration: boxdecoration(),
                  child: DropdownButton<String>(
                  
                   style: TextStyle(color: Colors.black),
                     underline: SizedBox(),
                  icon: Icon(Icons.keyboard_arrow_down,color: Colors.grey,),
                         hint:id=='category' ? Text(dropDownCategoryValue) : Text(dropDownLocationValue),
            items: SearchWidgetValues().frenchCategoryandSubs.map((String pickVal) {
                  return  DropdownMenuItem<String>(
                    
                    value: pickVal,
                    child:  SearchWidgetValues().frenchCategory.contains(pickVal) ? 
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                   
                    Container(color: Colors.orange,child: Padding(
                      padding:  EdgeInsets.only(top:2.0,bottom: 2.0,left: 22,right: 20),
                      child: Text(pickVal.toUpperCase(),style: TextStyle(color: Colors.white,fontFamily: 'Fred',fontSize: 15),),
                    )),
                  ],
                    )
                    :Padding(
                      padding:  EdgeInsets.all(0.0),
                      
                      child: Text(pickVal,
                      style: TextStyle(fontFamily: 'Ptsans',fontSize: 15),),
                    ),);
            }).toList(),
            onChanged: (val) {
              if (id=='category') {
                 setState(() {
                    dropDownCategoryValue=val;
                  });
              } else {
                setState(() {
                    dropDownLocationValue=val;
                  }); } }, ),  ),  );
  }


  Widget _optionalRowDropForHouses(String id){
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
Container(width: 140,
                  decoration: boxdecoration(),
                  child: Center(
                    child: DropdownButton<String>(
                      
                       style: TextStyle(color: Colors.black),
                       underline: SizedBox(),
                    icon: Icon(Icons.keyboard_arrow_down,color: Colors.grey,),
                    hint:id=='surface' ? Text(_surfaceMinValue) : Text(_pieceMinValue),
            items: id=='surface' ? SearchWidgetValues().surfaceMin.map((String pickVal) {
              
                    return  DropdownMenuItem<String>(
                      value: pickVal,
                      child:  Text(pickVal,
                      style: TextStyle(fontFamily: 'Ptsans',fontSize: 12),),);
            }).toList()
            :
SearchWidgetValues().piecesMin.map((String pickVal) {
              
                    return  DropdownMenuItem<String>(
                      value: pickVal,
                      child:  Text(pickVal,
                      style: TextStyle(fontFamily: 'Ptsans',fontSize: 15),),);
            }).toList(),

            onChanged: (val) {
              if (id=='surface') {
                setState(() => _surfaceMinValue=val );
              } else {
                                setState(() => _pieceMinValue=val );
                    } }, ),
                  ),  ),

                      //============

                      Container(width: 140,
                  decoration: boxdecoration(),
                  child: Center(
                    child: DropdownButton<String>(
                       style: TextStyle(color: Colors.black),
                       underline: SizedBox(),
                    icon: Row(
                      children: <Widget>[
                        Icon(Icons.keyboard_arrow_down,color: Colors.grey,),
                      ],
                    ),
                           hint:id=='surface' ? Text(_surfaceMaxValue) : Text(_pieceMaxValue),
            items: id=='surface' ? SearchWidgetValues().surfaceMax.map((String pickVal) {
              
                    return  DropdownMenuItem<String>(
                      value: pickVal,
                      child:  Text(pickVal,
                      style: TextStyle(fontFamily: 'Ptsans',fontSize: 15),),);
            }).toList()
            :
SearchWidgetValues().piecesMax.map((String pickVal) {
              
                    return  DropdownMenuItem<String>(
                      value: pickVal,
                      child:  Text(pickVal,
                      style: TextStyle(fontFamily: 'Ptsans',fontSize: 15),),);
            }).toList(),

            onChanged: (val) {
              if (id=='surface') {
                       setState(() =>  _surfaceMaxValue=val );                        
              } else {
                 setState(() =>  _pieceMaxValue=val );
               } }, ),
                  ),  ),
                  ],);
  }


  Widget _bottomButton(){
    return Padding(
      padding:  EdgeInsets.all(18.0),
      child: SizedBox(
                  height:MediaQuery.of(context).size.height*0.07,
                width: MediaQuery.of(context).size.width*0.6,
                child: FlatButton(
                  color: Colors.blue,child: Text('Search',
                  style: TextStyle(color: Colors.white,fontFamily: 'New',letterSpacing: 2),),
                  onPressed: (){
                Navigator.pop(context);
                },),),
    );
  }
}