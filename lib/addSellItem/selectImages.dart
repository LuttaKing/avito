
import 'package:avito/addSellItem/selectCategory.dart';
import 'package:avito/common.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
class SelectImages extends StatefulWidget {
  @override
  _SelectImagesState createState() => _SelectImagesState();
}

class _SelectImagesState extends State<SelectImages> {

final picker = ImagePicker();



  List containerNumbers=[0,1,2,3,4,5,6];
  List<File> listOfImagesPicked=[];
 
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Image',style: TextStyle(color: Colors.black,fontFamily: 'Ptsans'),),
      backgroundColor: Colors.grey[100],centerTitle: true,leading: IconButton(icon: Icon(Icons.close,color: Colors.black,),onPressed: (){Navigator.pop(context);},),),
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: BottomAppBar(
    color: Colors.white,
  
    child: _bottomButton(),
    elevation: 0,
  ),
      body: ListView(
        children: <Widget>[
          Container(
              child: Column(
    
            children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:120.0,bottom: 10,left: 10),
              child: Text('Photos (6 Maximum)'),
            ),
            
            Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[_container(0,context),_container(1,context),_container(2,context)],),

            Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[_container(3,context),_container(4,context),_container(5,context)],),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
              Icon(Icons.info_outline,color: Colors.blue[700],),
              SizedBox(width: 5,),
              Expanded(child: Text('Some blue text njkdszf dzgbsd dagvbsddffg sdjf vasjdvjzv jda',
              style: TextStyle(color: Colors.blue[700],fontSize: 14,fontFamily: 'Ptsans'))),
                ],
              ),
            ),
           
            ],),),
        ],
      ),
      
    );
  }

  Widget _container(int number,BuildContext context){
    return Padding(
      padding: EdgeInsets.all(7.0),
      child: DottedBorder(
      color: Colors.blue,
      strokeWidth: 1,
      child: GestureDetector(
              child: Container(
                height: MediaQuery.of(context).size.height*0.12,
                width: MediaQuery.of(context).size.height*0.12,
              color: Colors.white,child: 
        containerNumbers[0]==number ? 
        Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Icon(Icons.camera_alt,color: Colors.blue,size: 40,),
          Text('Add',style: TextStyle(color: Colors.blue,fontSize: 20),)
        ],)

        :listOfImagesPicked.length > number ?
         Container(child:  Image.file(listOfImagesPicked[number]),) 
         :
         Container()
        
        
        ),
        onTap: () async{
          if(listOfImagesPicked.length<=5 ){
          await pickImage();

          setState(() {
           
            if(containerNumbers.length>=1){
          containerNumbers.removeAt(0);
                          }
          });
          }
       
          print(listOfImagesPicked);
  
        },
      ),
),
    );
  }

  Future pickImage() async {
        final pickedFile  = await picker.getImage(source: ImageSource.gallery);
        setState(() {  
         
          listOfImagesPicked.add(File(pickedFile.path)); 
        });
  }

  Widget _bottomButton(){
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SizedBox(
                  height:MediaQuery.of(context).size.height*0.07,
                width: MediaQuery.of(context).size.width*0.6,
                child: FlatButton(
                  color: Colors.blue[700],child: Text('CONTINUE',
                  style: TextStyle(color: Colors.white,fontFamily: 'Ptsans'),),onPressed: (){
                if (listOfImagesPicked.length>0) {
            Navigator.push(
              context,
               MaterialPageRoute(
               builder: (context) => SelectCategory(listOfImages: listOfImagesPicked,),
               ));
                } else {
                notifyFlush(context,'You have to pick Atleast 1 image',2);

                }
 
                },),),
    );
  }
}
