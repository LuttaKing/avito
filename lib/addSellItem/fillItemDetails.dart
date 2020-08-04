
import 'dart:io';
import 'package:avito/addSellItem/fillItemWidgets.dart';
import 'package:avito/sellListProvider/AdItemListNotifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class ItemDetailForm extends StatefulWidget {
  List<File> listOfImages;
  String category;

  ItemDetailForm({this.category,this.listOfImages});
  @override
  _ItemDetailFormState createState() => _ItemDetailFormState();
}

class _ItemDetailFormState extends State<ItemDetailForm> {

    final _formKey = GlobalKey<FormState>();

    String title='';
  String description='';
  String price='';

  @override
  Widget build(BuildContext context) {
    return Consumer<AdItemNotifier>(
              builder: (context, adlistNotifier, anything) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
      title: Text('Item Details',style: TextStyle(fontFamily: 'Ptsans',color: Colors.grey[600]),),backgroundColor: Colors.grey[200],leading:  IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){
        Navigator.pop(context);
      },),),
      backgroundColor: Colors.grey[200],
       bottomNavigationBar: BottomAppBar(
    color: Colors.white,
    child: _bottomButton(),
    elevation: 0,
  ),
      body: Center(child: Container(child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: ListView(children: <Widget>[

             Padding(
               padding: const EdgeInsets.only(left:14.0,right: 14.0,top: 2,bottom: 2),
               child: Form(
            key: _formKey,
            child: Column(children: [
             dropDownLocation(context),
cars1bool(adlistNotifier) ? box(context) : Container(),
cars1bool(adlistNotifier) ? optionalDropDown('Marque',adlistNotifier) : Container(),
cars1bool(adlistNotifier) ? box(context) : Container(),
cars1bool(adlistNotifier)  ? optionalDropDown('Carburant',adlistNotifier) : Container(),
cars1bool(adlistNotifier)  ? box(context) : Container(),
cars1bool(adlistNotifier)  ? dropDownPuissance(adlistNotifier) : Container(),
cars1bool(adlistNotifier)  ? box(context) : Container(),
cars1bool(adlistNotifier)  ? dropForKMorYear('km',adlistNotifier) : Container(),
cars1bool(adlistNotifier)  ? box(context) : Container(),
cars1bool(adlistNotifier)  ? dropForKMorYear('yr',adlistNotifier) : Container(),
cars1bool(adlistNotifier)  ? box(context) : Container(),
cars1bool(adlistNotifier)  ? dropForOriginVitesse('origin',adlistNotifier): Container(),
adlistNotifier.pickedCategory=='Voitures' ? box(context) : Container(),
adlistNotifier.pickedCategory=='Voitures' ? dropForOriginVitesse('vitesse',adlistNotifier): Container(),
adlistNotifier.pickedCategory=='Motos' ? box(context) : Container(),
adlistNotifier.pickedCategory=='Motos' ? cylinderAndNumberTextField('cylinder',adlistNotifier) : Container(),
adlistNotifier.pickedCategory=='Motos' ? box(context) : Container(),
adlistNotifier.pickedCategory=='Motos' ? cylinderAndNumberTextField('nombre',adlistNotifier) : Container(),

//////////////////////////////////////////////////////////
 housesBool1(adlistNotifier) ? box(context) : Container(),
 housesBool1(adlistNotifier) ? addressTextField('Address',adlistNotifier): Container(),
housesBool1(adlistNotifier) ? box(context) : Container(),
 housesBool1(adlistNotifier) ? dropChambressandSalle('Chambres',adlistNotifier): Container(),
 housesBool1(adlistNotifier) ? box(context) : Container(),
 housesBool1(adlistNotifier) ? dropChambressandSalle('Sale de Bain',adlistNotifier): Container(),
housesBool1(adlistNotifier) ? box(context) : Container(),
 housesBool1(adlistNotifier) ? dropChambressandSalle('Salons',adlistNotifier): Container(),
 housesBool1(adlistNotifier) ? box(context) : Container(),
 housesBool1(adlistNotifier) ? dropChambressandSalle('Etage',adlistNotifier): Container(),

 housesBool1(adlistNotifier) ? box(context) : Container(),
 housesBool1(adlistNotifier) ? addressTextField('Surface Totale',adlistNotifier): Container(),


             SizedBox(   height:MediaQuery.of(context).size.height*0.03,),
              Container(decoration: BoxDecoration(color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(8)),),
                child: TextFormField(
                  
                   validator: (val)=> val.length<10 ? 'Title should be longer than 10 characters' : null,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.personal_video),
                  labelText: ' Product Title',
                  labelStyle: TextStyle(fontSize: 14),
                ),
                onChanged: (val){
                  setState(()=> title=val);
                },
                ),
              ),
              SizedBox(   height:MediaQuery.of(context).size.height*0.03,),
              Container(decoration: BoxDecoration(color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(8)),),
                child: TextFormField(
                
                maxLines: 3,
                  validator: (val)=> val.length<10 ? 'Description Should Be Longer' : null,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.description),
                      labelText: ' Description of Product',
                      labelStyle: TextStyle(fontSize: 14)),
                      onChanged: (val){
                  setState(()=> description=val);
                },
                ),
              ),
            SizedBox(   height:MediaQuery.of(context).size.height*0.03,),
              Container(decoration: BoxDecoration(color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(8)),),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  validator: (val)=> val.length<1 ? 'Please input the price' : null,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.attach_money),
                      labelText: ' Price',
                      labelStyle: TextStyle(fontSize: 14)),
                      onChanged: (val){
                  setState(()=> price=val);
                },
                ),
              ),
              SizedBox(   height:MediaQuery.of(context).size.height*0.03,),
         
            ]),
          ),
             ),
          
          ],),
      ),),),
    );
    });
  }

  bool cars1bool(var notifier){
    if (notifier.pickedCategory=='Voitures' ||  notifier.pickedCategory=='Motos' ) {
      return true;
    } else {
      return false;
    }
  }

  bool housesBool1(var notifier){
    
    if (notifier.pickedCategory=='Appartements' ||  notifier.pickedCategory=='Maisons et Villas' ||  notifier.pickedCategory=='Locations Vacances'||  notifier.pickedCategory=='Bureaux'||  notifier.pickedCategory=='Commerces et Affaires' ) {
      return true;
    } else {
      return false;
    }
  }
  
   Widget _bottomButton(){
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SizedBox(
                  height:MediaQuery.of(context).size.height*0.07,
                width: MediaQuery.of(context).size.width*0.6,
                child: FlatButton(
                  color: Colors.blue[600],child: Text('CONTINUE',
                  style: TextStyle(color: Colors.white,fontFamily: 'Ptsans'),),
                  onPressed: (){
            },),),
    );
  }
}