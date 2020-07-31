import 'package:avito/screens/NavPage.dart';
import 'package:avito/screens/bottomBarScreens/Account.dart';
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
  String marqueValue='Marque';
  String carburantValue='Carburant';
  String puissanceValue='Puissance Fiscale';
  String _kmMinValue='min';
String _kmMaxValue='max';
 String _yrMinValue='min';
String _yrMaxValue='max';
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
       leading: IconButton(icon: Icon(Icons.close,color: Colors.black,),onPressed: (){Navigator.pop(context);},),
      title: Text('Filter Search',style: TextStyle(fontFamily: 'Ptsans',color: Colors.black),),
      centerTitle: true,
      elevation: 0,
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
                           Expanded(child: radioTile('bulsjit')),
                            Expanded(child: radioTile('vente')),
                         ],
                       ),
dropDownCategoryValue == 'Voitures' ?  topText('Marque'): Container(),
                       dropDownCategoryValue == 'Voitures' ? _optionalDropDown('Marque') : Container(),
        dropDownCategoryValue == 'Voitures' ?  topText('Carburant'): Container(),
                 dropDownCategoryValue == 'Voitures' ? _optionalDropDown('Carburant') : Container(),
dropDownCategoryValue == 'Voitures' ?  topText('KM'): Container(),
                 dropDownCategoryValue == 'Voitures' ? _rowDropDown('km'):Container(),
dropDownCategoryValue == 'Voitures' ?  topText('Year'): Container(),
                 dropDownCategoryValue == 'Voitures' ? _rowDropDown('year'):Container(),
dropDownCategoryValue == 'Voitures' ?  topText('Puissance'): Container(),
                 dropDownCategoryValue == 'Voitures' ? dropDownPuissance():Container(),

      topText('Price'),

      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         priceTextField('Min'),
         SizedBox(width: 20,),
                  priceTextField('Max'),

      ],),
        ],),
          ),
        ),
    );
  }
  Widget topText(String text){
    return Padding(
        padding: const EdgeInsets.only(left:8.0,top:4,bottom: 4),
        child: Text(text,style: TextStyle(fontFamily: 'New',color: Colors.blue,fontWeight: FontWeight.bold),),
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
                       if (hintText=='Min') {
                         minimumPrice=text;
                       }else{
                         maximumPrice=text;
                       }
                      },
                     // style: TextStyle(color: Colors.red, fontWeight: FontWeight.w300),
                     decoration: InputDecoration(
                      hintText: hintText,
                              border: OutlineInputBorder()
                            ),
                      ),
               );
  }

  Widget dropDownButton(String id){
    return Center(child: Container(width: 300,
                  decoration: boxdecoration(),
                  child: DropdownButton<String>(
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
                      padding: const EdgeInsets.only(top:2.0,bottom: 2.0,left: 22,right: 20),
                      child: Text(pickVal.toUpperCase(),style: TextStyle(color: Colors.white,fontFamily: 'Fred',fontSize: 15),),
                    )),
                  ],
                    )
                    :Text(pickVal,
                    style: TextStyle(fontFamily: 'Ptsans',fontSize: 15),),);
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

  Widget _optionalDropDown(String id){
    return Center(
      child: Container(width: 300,
                  decoration:boxdecoration(),
                  child: DropdownButton<String>(
                     underline: SizedBox(),
                  icon: Icon(Icons.keyboard_arrow_down,size: 0,),
                         hint:id=='Marque' ? Text(marqueValue) : Text(carburantValue),
            items: id=='Marque' ? SearchWidgetValues().carBrands.map((String pickVal) {
              
                  return  DropdownMenuItem<String>(
                    value: pickVal,
                    child:  Text(pickVal,
                    style: TextStyle(fontFamily: 'Ptsans',fontSize: 15),),);
            }).toList()
            :
SearchWidgetValues().carburant.map((String pickVal) {
              
                  return  DropdownMenuItem<String>(
                    value: pickVal,
                    child:  Text(pickVal,
                    style: TextStyle(fontFamily: 'Ptsans',fontSize: 15),),);
            }).toList(),

            onChanged: (val) {
              if (id=='Marque') {
                 setState(() {
                    marqueValue=val;
                  });
              } else {
                setState(() {
                    carburantValue=val;
                  
                  }); } }, ),  ),  );
  }
Widget dropDownPuissance(){
    return Center(child: Container(width: 300,
                  decoration: boxdecoration(),
                  child: Center(
                    child: DropdownButton<String>(
                       underline: SizedBox(),
                    icon: Icon(Icons.keyboard_arrow_down,color: Colors.grey,),
                           hint: Text(puissanceValue),
            items: SearchWidgetValues().puissanceList.map((String pickVal) {
              
                    return  DropdownMenuItem<String>(
                      value: pickVal,
                      child: Text(pickVal,
                      style: TextStyle(fontFamily: 'Ptsans',fontSize: 15),),);
            }).toList(),
            onChanged: (val) {
            setState(() => puissanceValue=val );
              }, ),
                  ),  ),  );
  }
  Widget _rowDropDown(String id){
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[
Container(width: 140,
                  decoration: boxdecoration(),
                  child: Center(
                    child: DropdownButton<String>(
                       underline: SizedBox(),
                    icon: Icon(Icons.keyboard_arrow_down,color: Colors.grey,),
                    hint:id=='km' ? Text(_kmMinValue) : Text(_yrMinValue),
            items: id=='km' ? SearchWidgetValues().kmmin.map((String pickVal) {
              
                    return  DropdownMenuItem<String>(
                      value: pickVal,
                      child:  Text(pickVal,
                      style: TextStyle(fontFamily: 'Ptsans',fontSize: 12),),);
            }).toList()
            :
SearchWidgetValues().yearMin.map((String pickVal) {
              
                    return  DropdownMenuItem<String>(
                      value: pickVal,
                      child:  Text(pickVal,
                      style: TextStyle(fontFamily: 'Ptsans',fontSize: 15),),);
            }).toList(),

            onChanged: (val) {
              if (id=='km') {
                setState(() => _kmMinValue=val );
              } else {
                                setState(() => _yrMinValue=val );
                    } }, ),
                  ),  ),

                      //============

                      Container(width: 140,
                  decoration: boxdecoration(),
                  child: Center(
                    child: DropdownButton<String>(
                       underline: SizedBox(),
                    icon: Row(
                      children: <Widget>[
                        Icon(Icons.keyboard_arrow_down,color: Colors.grey,),
                      ],
                    ),
                           hint:id=='km' ? Text(_kmMaxValue) : Text(_yrMaxValue),
            items: id=='km' ? SearchWidgetValues().kmmax.map((String pickVal) {
              
                    return  DropdownMenuItem<String>(
                      value: pickVal,
                      child:  Text(pickVal,
                      style: TextStyle(fontFamily: 'Ptsans',fontSize: 15),),);
            }).toList()
            :
SearchWidgetValues().yearMax.map((String pickVal) {
              
                    return  DropdownMenuItem<String>(
                      value: pickVal,
                      child:  Text(pickVal,
                      style: TextStyle(fontFamily: 'Ptsans',fontSize: 15),),);
            }).toList(),

            onChanged: (val) {
              if (id=='km') {
                                               
              } else {
                 setState(() =>  _yrMaxValue=val );
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
                  color: Colors.blue[700],child: Text('SEARCH',
                  style: TextStyle(color: Colors.white,fontFamily: 'Ptsans'),),
                  onPressed: (){
                Navigator.pop(context);
                },),),
    );
  }
}