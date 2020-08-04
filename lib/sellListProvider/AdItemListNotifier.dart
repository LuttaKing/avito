
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

  String kmVal='Choose Km Val';
  String originVal='Origine';
  String yrVal='Pick Year';
  String vitesse='Vittese';

  String cylinderVal='';
  String nombreVal='';

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

 changeKMval(String val){
kmVal=val;
   notifyListeners();
 }

 changeOriginval(String val){
originVal=val;
   notifyListeners();
 }

 changeYearval(String val){
yrVal=val;
   notifyListeners();
 }

 changeVitesseval(String val){
vitesse=val;
   notifyListeners();
 }

 changeCylinderVal(String val){
   cylinderVal=val;
   notifyListeners();
 }

  changeNombreVal(String val){
   nombreVal=val;
   notifyListeners();
 }

 ////////////////////////////////////////////////
 String address='';
 String chambres='Chambres';
 String salleDeBain='SalleDeBain';
 String salon='Salon';
 String etage='Etage';

 String surfaceTotal='';
changeAddress(String val){
   address=val;
   notifyListeners();
 }
 changeChambres(String val){
   chambres=val;
   notifyListeners();
 }
 changeSalleDeBain(String val){
  salleDeBain=val;
   notifyListeners();
 }
 changeSalon(String val){
   salon=val;
   notifyListeners();
 }
 changeEtage(String val){
   etage=val;
   notifyListeners();
 }
 changeSurfaceTotal(String val){
   surfaceTotal=val;
   notifyListeners();
 }



}
 

  