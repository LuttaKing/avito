import 'package:avito/searchWidgets.dart';
import 'package:avito/sellListProvider/AdItemModel.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AdItemNotifier extends ChangeNotifier {
  List<AdItemModel> _adList = [];


  addItemtoList(String category, String title, String description, String price,String location, List<File> imageList) {
    AdItemModel _adItem = AdItemModel(
        title: title,
        category: category,
        price: price,
        description: description,
        location: location,
        imageFileList: imageList);
        
    _adList.add(_adItem);
    notifyListeners();
  }

String pickedCategory=' Pick Category';
  setCategory(String categor){
pickedCategory=categor;
notifyListeners();
  }

  String pickedLocation='Pick a location';
 setLocation(String location){
pickedLocation=location;
notifyListeners();
  }

  String marqueValue='Marque';
  String carburantValue='Carburant';
  String puissanceValue='Puissance Fiscale';
  changeMarqueVal(String marqVal){
marqueValue=marqVal;
notifyListeners();
 }

 changecarburantVal(String carbur){
carburantValue=carbur;
notifyListeners();
 }

 changePussanceVal(String val){
puissanceValue=val;
   notifyListeners();
 }




}
 Widget optionalDropDown(String id,AdItemNotifier notifier){
    return Center(
      child: Container(width: 300,
                  decoration:boxdecoration(),
                  child: Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: DropdownButton<String>(
                     
                       style: TextStyle(color: Colors.black),
                       underline: SizedBox(),
                    icon: Icon(Icons.keyboard_arrow_down,size: 0,),
                           hint:id=='Marque' ? Text(notifier.marqueValue) : Text(notifier.carburantValue),
            items: id=='Marque' ? SearchWidgetValues().carBrands.map((String pickVal) {
              
                    return  DropdownMenuItem<String>(
                      
                      value: pickVal,
                      child:  Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Text(pickVal,
                        style: TextStyle(fontFamily: 'Ptsans',fontSize: 15),),
                      ),);
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
                 notifier.changeMarqueVal(val);
              } else {
                notifier.changecarburantVal(val);
                    } }, ),
                  ),  ),  );
  }

  Widget dropDownPuissance(AdItemNotifier notifier){
    return Center(child: Container(width: 300,
                  decoration: boxdecoration(),
                  child: Center(
                    child: DropdownButton<String>(
                       style: TextStyle(color: Colors.black),
                       underline: SizedBox(),
                    icon: Icon(Icons.keyboard_arrow_down,color: Colors.grey,),
                           hint: Text(notifier.puissanceValue),
            items: SearchWidgetValues().puissanceList.map((String pickVal) {
              
                    return  DropdownMenuItem<String>(
                      value: pickVal,
                      child: Text(pickVal,
                      style: TextStyle(fontFamily: 'Ptsans',fontSize: 15),),);
            }).toList(),
            onChanged: (val) {
            notifier.changePussanceVal(val);
              }, ),
                  ),  ),  );
  }