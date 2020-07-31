

import 'dart:io';

import 'package:avito/screens/NavPage.dart';
import 'package:flutter/material.dart';

class ItemDetailForm extends StatefulWidget {
  List<File> listOfImages;
  String category;

  ItemDetailForm({this.category,this.listOfImages});
  @override
  _ItemDetailFormState createState() => _ItemDetailFormState();
}

class _ItemDetailFormState extends State<ItemDetailForm> {

    final _formKey = GlobalKey<FormState>();
String pickedLocation='Pick a location';
    String title='';
  String description='';
  String price='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text('Item Details',style: TextStyle(fontFamily: 'Ptsans',color: Colors.grey[600]),),backgroundColor: Colors.grey[200],leading:  IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){
        Navigator.pop(context);
      },),),
      backgroundColor: Colors.grey[200],
       bottomNavigationBar: BottomAppBar(
    color: Colors.white,
  
    child: _bottomButton(),
    elevation: 0,
  ),
      body: Center(child: Container(child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(children: <Widget>[



             Padding(
               padding: const EdgeInsets.all(12.0),
               child: Form(
            key: _formKey,
            child: Column(children: [
             dropDownButton(),
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
                          SizedBox(width: 170,),
                          Icon(Icons.keyboard_arrow_down,color: Colors.grey,),
                        ],
                      ),
                             hint:Padding(
                               padding: const EdgeInsets.only(left:8.0),
                               child: Text(pickedLocation),
                             ),
            items: <String>['Ahgsdgh', 'Bsdfghsfgh', 'Cghsfsgh', 'Dfgghdfgh'].map((String pickVal) {
             
                      return  DropdownMenuItem<String>(
                        value: pickVal,
                        child:  Text(pickVal),
                      );
            }).toList(),
            onChanged: (val) {
                      setState(() {
                        pickedLocation=val;
                      });
            },
          ),
         
                    ],
                  ),
                ),
              );
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
               if(_formKey.currentState.validate()){
                    print([title,pickedLocation,widget.category,widget.listOfImages,price]);
              }
            // Navigator.push(
            //   context,
            //    MaterialPageRoute(builder: (context) => NavPage(),//    ));
            },),),
    );
  }
}