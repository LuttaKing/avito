import 'package:avito/searchWidgets.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  String name;
  String number;
  String pickedLocation='Nairobi';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile',style: TextStyle(color: Colors.black,fontFamily: 'New'),),
      leading: IconButton(icon: Icon(Icons.close,color: Colors.black,),onPressed: (){Navigator.pop(context);},),
      backgroundColor: Colors.grey[200],
      actions: <Widget>[IconButton(icon: Icon(Icons.edit,color: Colors.green,),onPressed: (){
        _settingModalBottomSheet(context);
      },)],
      ),
      body: SafeArea(child: Container(color: Colors.grey[200],
        child: ListView(children: <Widget>[

Padding(
  padding:EdgeInsets.all(8.0),
  child:   CircleAvatar(radius: 34.5,backgroundColor: Colors.grey,
  child: CircleAvatar(radius: 32,backgroundColor: Colors.orange[100],child: Icon(Icons.person,color: Colors.grey[600],),),),
),

Center(
  child:   Padding(
    padding: EdgeInsets.all(8.0),
    child:   Text('John Doens',style: TextStyle(fontSize: 21,fontFamily: 'Ptsans'),),
  ),
),

Padding(
  padding:EdgeInsets.only(left:18.0),
  child:   Text('User info',style: TextStyle(fontFamily: 'Ptsans',fontSize: 18,color: Colors.blueGrey[800]),),
),

Padding(
  padding:  EdgeInsets.all(18.0),
  child:   Card(elevation: 5,
  
    child: Column(children: <Widget>[
 ListTile(leading: Icon(Icons.email,color: Colors.blue,size: 21,),
 
 title: Text('Email'),
 subtitle: Text('denilsonwash@gmail.com'),),

Divider(endIndent: 20,indent: 20,),
 ListTile(
   leading: Icon(Icons.call,color: Colors.blue,size: 21,),
 title: Text('Number'),
 subtitle: Text('50848291818'),),

 Divider(endIndent: 20,indent: 20,),
 ListTile(
   leading: Icon(Icons.location_on,color: Colors.blue,size: 21,),
 title: Text('Location'),
 subtitle: Text('Nairobi'),),
  
  ],),),
),
Padding(
  padding:EdgeInsets.only(left:18.0,bottom: 12),
  child:   Text('Set Location',style: TextStyle(fontFamily: 'Ptsans',fontSize: 18,color: Colors.blueGrey[800]),),
),

 dropDownButton(),

 Padding(
                  padding:EdgeInsets.all(23.0),
                  child: Container( decoration: BoxDecoration(
                     color: Colors.blue,
                      borderRadius: BorderRadius.all( Radius.circular(5.0)  ),
  ),child: FlatButton(onPressed:(){
     _settingModalBottomSheet(context);
  },
  child: Text('Edit',style: TextStyle(color: Colors.white,fontFamily: 'New',letterSpacing: 2),),)),
                ),

        ],),
      ),),
    );
  }

  void _settingModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext bc) {
          return Container(
            margin:
                const EdgeInsets.only( left: 15, right: 15, bottom: 20),
            height: MediaQuery.of(context).size.height*0.65,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: ListView(
              
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Container(decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)),),
                    child: TextFormField(
                      
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.person_outline),
                      labelText: ' Full Name',
                      labelStyle: TextStyle(fontSize: 14),
                    ),
                    onChanged: (val){
                      setState(()=> name=val);
                    },
                    ),
                ),
                  ),
               SizedBox(   height:MediaQuery.of(context).size.height*0.022,),
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(8)),),
                    child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.call),
                      labelText: ' Phone Number',
                      labelStyle: TextStyle(fontSize: 14),
                    ),
                    onChanged: (val){
                      setState(()=>number=val);
                    },
                    ),
                  ),
                ),
                Padding(
                  padding:EdgeInsets.all(13.0),
                  child: Container( decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.all( Radius.circular(5.0)  ),
  ),child: FlatButton(onPressed:(){
    Navigator.pop(context);
  },
  child: Text('Save',style: TextStyle(
    color: Colors.white,fontFamily: 'New',letterSpacing: 2),),)),
                ),
                SizedBox(height:MediaQuery.of(context).size.height*0.422,),
                ],
                
              ),
          );
        });
  }

  Widget dropDownButton(){
    return Center(
                child: Container(
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
                           child: Text(pickedLocation),
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
                   setState(() {
                     pickedLocation=val;
                   });
            },
          ),
                ),
              );
  }
}