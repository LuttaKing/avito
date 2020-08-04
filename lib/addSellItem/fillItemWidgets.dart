import 'package:avito/searchWidgets.dart';
import 'package:flutter/material.dart';
import 'package:avito/sellListProvider/AdItemListNotifier.dart';
import 'package:provider/provider.dart';

Widget dropDownLocation(BuildContext context){
    return Center(
                child: Container(width: 300,
                  decoration: BoxDecoration(
                     color: Colors.white,
                      borderRadius: BorderRadius.all(
        Radius.circular(5.0) //      
    ),
    border: Border.all(color: Colors.blue),
  ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      DropdownButton<String>(
                        
                         underline: SizedBox(),
                      icon: Row(
                        children: <Widget>[
                          SizedBox(width: 160,),
                          Icon(Icons.location_on,color: Colors.blueGrey,),
                        ],
                      ),
                             hint:Padding(
                               padding: const EdgeInsets.only(left:8.0),
                               child: Text( Provider.of<AdItemNotifier>(context, listen: false).pickedLocation),
                             ),
            items: <String>['Ahgsdgh', 'Bsdfghsfgh', 'Cghsfsgh', 'Dfgghdfgh'].map((String pickVal) {
             
                      return  DropdownMenuItem<String>(
                        value: pickVal,
                        child:  Text(pickVal),
                      );
            }).toList(),
            onChanged: (val) {
                      Provider.of<AdItemNotifier>(context, listen: false).setLocation(val);            },
          ),
         
                    ],
                  ),
                ),
              );
  }

  Widget box(BuildContext context){
    return SizedBox(   height:MediaQuery.of(context).size.height*0.023,);
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

  Widget dropForKMorYear(String id,AdItemNotifier notifier){
    return Center(child: Container(width: 300,
                  decoration: boxdecoration(),
                  child: Center(
                    child: DropdownButton<String>(
                      
                       style: TextStyle(color: Colors.black),
                       underline: SizedBox(),
                    icon: Icon(Icons.keyboard_arrow_down,color: Colors.grey,),
                           hint: id=='km'?Text(notifier.kmVal):Text(notifier.yrVal),
            items:id=='km' ? SearchWidgetValues().kilometrageList.map((String pickVal) {
              
                    return  DropdownMenuItem<String>(
                      value: pickVal,
                      child: Text(pickVal,
                      style: TextStyle(fontFamily: 'Ptsans',fontSize: 15),),);
            }).toList()
            :
            SearchWidgetValues().yearMax.map((String pickVal) {
              
                    return  DropdownMenuItem<String>(
                      value: pickVal,
                      child: Text(pickVal,
                      style: TextStyle(fontFamily: 'Ptsans',fontSize: 15),),);
            }).toList(),
            onChanged: (val) {
            if (id=='km') {
              notifier.changeKMval(val);
            } else {
          notifier.changeYearval(val);
            }
              }, ),
                  ),  ),  );
  }

   Widget dropForOriginVitesse(String id,AdItemNotifier notifier){
    return Center(child: Container(width: 300,
                  decoration: boxdecoration(),
                  child: Center(
                    child: DropdownButton<String>(
                       style: TextStyle(color: Colors.black),
                       underline: SizedBox(),
                    icon: Icon(Icons.keyboard_arrow_down,color: Colors.grey,),
                           hint: id=='origin'?Text(notifier.originVal):Text(notifier.vitesse),
            items:id=='origin' ? SearchWidgetValues().originList.map((String pickVal) {
              
                    return  DropdownMenuItem<String>(
                      value: pickVal,
                      child: Text(pickVal,
                      style: TextStyle(fontFamily: 'Ptsans',fontSize: 15),),);
            }).toList()
            :
            SearchWidgetValues().vitesseList.map((String pickVal) {
              
                    return  DropdownMenuItem<String>(
                      value: pickVal,
                      child: Text(pickVal,
                      style: TextStyle(fontFamily: 'Ptsans',fontSize: 15),),);
            }).toList()
            ,
            onChanged: (val) {
            if (id=='origin') {
              notifier.changeOriginval(val);
            } else {
          notifier.changeVitesseval(val);
            }
              }, ),
                  ),  ),  );
  }

  Widget cylinderAndNumberTextField(String id,AdItemNotifier notifier){
    return Container(
      decoration: BoxDecoration(color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(8)),),
                child: TextFormField(
                   keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                  labelText: id=='cylinder' ? ' Cylinder ':'Nombre de Shit',
                  labelStyle: TextStyle(fontSize: 14),
                ),
                onChanged: (val){
                  if (id=='cylinder') {
                    notifier.changeCylinderVal(val);
                  } else {
                    notifier.changeNombreVal(val);
                  } },
                ),
              );
  }

   Widget addressTextField(String id,AdItemNotifier notifier){
    return Container(
      decoration: BoxDecoration(color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(8)),),
                child: TextFormField(
                   keyboardType:id=='Address' ? TextInputType.text :TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                  labelText:id,
                  labelStyle: TextStyle(fontSize: 14),
                ),
                onChanged: (val){
                  if (id=='Address') {
                    notifier.changeAddress(val);
                  } else if(id=='Surface Totale'){
                    notifier.changeSurfaceTotal(val);
                  }
                   },
                ),
              );
  }

   Widget dropChambressandSalle(String id,AdItemNotifier notifier){
    return Center(child: Container(width: 300,
                  decoration: boxdecoration(),
                  child: Center(
                    child: DropdownButton<String>(
                       style: TextStyle(color: Colors.black),
                       underline: SizedBox(),
                    icon: Icon(Icons.keyboard_arrow_down,color: Colors.grey,),
                           hint: id=='Chambres'?Text(notifier.chambres):id=='Sale de Bain'?Text(notifier.salleDeBain):id=='Salons'?Text(notifier.salon):Text(notifier.etage),
            items:SearchWidgetValues().piecesMin.map((String pickVal) {
              
                    return  DropdownMenuItem<String>(
                      value: pickVal,
                      child: Text(pickVal,
                      style: TextStyle(fontFamily: 'Ptsans',fontSize: 15),),);
            }).toList(),
            onChanged: (val) {
            if (id=='Chambres') {
              notifier.changeChambres(val);
            } else if(id=='Sale de Bain'){
                  notifier.changeSalleDeBain(val);
            }
            else if(id=='Salons'){
                  notifier.changeSalon(val);
            }
            else {
          notifier.changeEtage(val);
            }
              }, ),
                  ),  ),  );
  }