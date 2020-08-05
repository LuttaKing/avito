import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
String dropDownValue='Pick location';
  String email='';
  String password='';
        String radioItem = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text('REGISTER',
      style: TextStyle(fontFamily: 'New',color: Colors.grey[800]),),backgroundColor: Colors.grey[200],leading:  IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){
        Navigator.pop(context);
      },),),
      backgroundColor: Colors.grey[100],
      body: Center(child: Container(child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(children: <Widget>[


             Padding(
               padding: const EdgeInsets.all(12.0),
               child: Form(
            key: _formKey,
            child: Column(children: [
              Container(decoration: BoxDecoration(color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(8)),),
                child: TextFormField(
                  
                   validator: (val)=> val.length<7 || !val.contains('@') ? 'Enter Valid Email' : null,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.person_outline),
                  labelText: ' Full Name',
                  labelStyle: TextStyle(fontSize: 14),
                ),
                onChanged: (val){
                  setState(()=> email=val);
                },
                ),
              ),
             SizedBox(   height:MediaQuery.of(context).size.height*0.03,),
              Container(decoration: BoxDecoration(color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(8)),),
                child: TextFormField(
                  
                   validator: (val)=> val.length<7 || !val.contains('@') ? 'Enter Valid Email' : null,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.email),
                  labelText: ' EMAIL',
                  labelStyle: TextStyle(fontSize: 14),
                ),
                onChanged: (val){
                  setState(()=> email=val);
                },
                ),
              ),
              SizedBox(   height:MediaQuery.of(context).size.height*0.03,),
              Container(decoration: BoxDecoration(color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(8)),),
                child: TextFormField(
                  
                  validator: (val)=> val.length<6 ? 'Password Should Be Longer' : null,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.call),
                      labelText: ' PHONE NO.',
                      labelStyle: TextStyle(fontSize: 14)),
                      onChanged: (val){
                  setState(()=> password=val);
                },
                ),
              ),
            SizedBox(   height:MediaQuery.of(context).size.height*0.03,),
              Container(decoration: BoxDecoration(color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(8)),),
                child: TextFormField(
                  
                  validator: (val)=> val.length<6 ? 'Password Should Be Longer' : null,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.lock_outline),
                      labelText: ' PASSWORD',
                      labelStyle: TextStyle(fontSize: 14)),
                      onChanged: (val){
                  setState(()=> password=val);
                },
                ),
              ),
              SizedBox(   height:MediaQuery.of(context).size.height*0.03,),
              Container(decoration: BoxDecoration(color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(8)),),
                child: TextFormField(
                  
                  validator: (val)=> val.length<6 ? 'Password Should Be Longer' : null,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.lock_outline),
                      labelText: 'CONFIRM PASSWORD',
                      labelStyle: TextStyle(fontSize: 14)),
                      onChanged: (val){
                  setState(()=> password=val);
                },
                ),
              ),
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
            ]),
          ),
             ),
       

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(color: Colors.blue[600],
                                borderRadius: BorderRadius.all(Radius.circular(8)),),
            child: SizedBox(
                height:MediaQuery.of(context).size.height*0.06,
            width: MediaQuery.of(context).size.width*0.75,
            child: FlatButton(onPressed: (){
              if(_formKey.currentState.validate()){

              }
            },
            child: Text('REGISTER',
            style: TextStyle(fontFamily: 'Ptsans',color: Colors.white),),),),
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
                          Icon(Icons.keyboard_arrow_down,color: Colors.blue,),
                        ],
                      ),
                             hint:Text(dropDownValue),
            items: <String>['Ahgsdgh', 'Bsdfghsfgh', 'Cghsfsgh', 'Dfgghdfgh'].map((String pickVal) {
             
                      return  DropdownMenuItem<String>(
                        value: pickVal,
                        child:  Text(pickVal),
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
}