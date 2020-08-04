import 'package:flutter/material.dart';

    class SearchWidgetValues{
List<String> frenchCategory=["Ordinateur et multimédia", 'Véhicule','Immeuble', 'Maison et jardin', 'Emploi et services', 'Bien être vestimentaire', 'Loisirs',  'Entreprises','Autres',];
    List<String> frenchCategoryandSubs=[

"Ordinateur et multimédia", "Téléphones", "Image et son", "Ordinateur portable", "Jeux vidéo", "Ordinateurs de bureau", "Accessoires informatiques", "Appareil photo", "Tablette", "Télévision",
    'Véhicule', 'Voitures', 'Motos', 'Pièces de véhicules', 'Bateaux', 'Vélos', 'Véhicules professionnels',
    'Immeuble', 'Appartements', 'Maisons et Villas', 'Locations Vacances', 'Bureaux', 'Commerces et Affaires', 'Terres et Fermes', 'Colocataires',
    'Maison et jardin', 'Appareils et vaisselle', 'Meubles et décoration', 'Jardin et outils',
    'Emploi et services', 'Emplois', 'Demandes d\'emploi', 'Services', 'Cours et formation', 'Centre d\'appels', 'Gardiens de maison et chauffeurs', 'Travaux domestiques', 'Cadres', 'Stage',
    'Bien être vestimentaire', 'Pour les enfants', 'Vêtements', 'Sacs','Beauté', 'Équipement pour bébés', 'Chaussures', 'Montres et bijoux',
    'Loisirs', 'Sports et loisirs', 'Animaux', 'Films, Livres Magazines', 'Voyages et billets', 'Art', 'Instruments de musique',
    'Entreprises', 'Équipement professionnel', 'Entreprise et commercial', 'Stock et commerce de gros',
    'Autres','autres',
    ];

    List<String> carBrands=[
'Alfa Romeo','Aston Martin','Audi','Bently','BMW','BYD','Cadillac','Changhe','Chery','Chevrolet','Chrysler','Citroen',
'Dacia','Daewoo','Daihatsu','Dodge','Ferrari','Fiat','Ford','Foton','Geely','GMC','Honda','Hummer','Hyundai',
'Infiniti','Isuzu','Iveco','Jaguar','Kia','Lamborghini','lancia','Land Rover','Lexus','Lincoln','Mahindra',
'Man','Maserati','Masey Ferguson','Mazda','Mercedes-Benz','mini','Mitsubishi','Nissan','Opel','Peugeot','UFO','Volvo','Acrea','Acura',
'Pontiac','Porsche','Renault','Rover','Seat','Skoda','Smart','Ssangyong','Subaru','Suzuki','Toyota','Volkswagen','Zotye','Autres',
  ];
List<String> carburant=['Diesel','Essence','Electrique','LPG','Hybride'];

List<String> kmmin=['0','5 000','10 000','15 000','20 000','25 000','30 000','35 000','40 000','45 000','50 000','60 000','65 000',
'70 000','75 000','80 000','85 000','90 000','95 000','100 000','110 000','120 000','130 000','140 000','150 000',
'160 000','170 000','180 000','190 000','200 000','250 000','300 000','350 000','400 000','450 000','500 000',

];
List<String> kmmax=[
  '4 999', '9 999', '14 999', '19 999', '24 999', '29 999', '34 999', ' 39 999', '44 999',
  '49 999', '54 999', '59 999', '64 999', '69 999', '74 999', '79 999', '84 999', '89 999',
  '94 999', '99 999', '109 999', '119 999', '129 999', '139 999', '149 999', '159 999', '169 999',
  '179 999', '189 999', '199 999', '249 999', '299 999', '349 999', '399 999', '449 999', '499 999','Over 500,000',
];

List<String> yearMin=['2018', '2017', '2016', '2015', '2014', '2013', '2012', '2011', '2010', '2009', '2008', '2007', '2006', '2005', '2004', '2003', '2002', '2001', '2000', '1999', '1998', '1997', '1996', '1995', '1994', '1993', '1992', '1991', '1990', '1989', '1988', '1987', '1986', '1985', '1984', '1983', '1982', '1981', '1980'];
List<String> yearMax=['2018', '2017', '2016', '2015', '2014', '2013', '2012', '2011', '2010', '2009', '2008', '2007', '2006', '2005', '2004', '2003', '2002', '2001', '2000', '1999', '1998', '1997', '1996', '1995', '1994', '1993', '1992', '1991', '1990', '1989', '1988', '1987', '1986', '1985', '1984', '1983', '1982', '1981', '1980'];
List<String> puissanceList=['4 CV', '5 CV', '6 CV', '7 CV', '8 CV', '9 CV', '10 CV', '11 CV', '12 CV', '13 CV', '14 CV', '15 CV', '16 CV', '17 CV', '18 CV', '19 CV', '20 CV', '21 CV', '22 CV', '23 CV', '24 CV', '25 CV', '26 CV', '27 CV', '28 CV', '29 CV', '30 CV', '31 CV', '32 CV', '33 CV', '34 CV', '35 CV', '36 CV', '37 CV', '38 CV', '39 CV', '40 CV'];

List<String> surfaceMin=['0','25','35','50','60','70','80','90','100','125','150','175','200'];
List<String> surfaceMax=['0','25','35','50','60','70','80','90','100','125','150','175','200'];
List<String> piecesMin=['1','2','3','4','5','6','7','8','9','10','10+'];
List<String> piecesMax=['1','2','3','4','5','6','7','8','9','10','10+'];

//////////////////////////////////////////////////////
///For Category
List<String> kilometrageList=[
  '0 - 4 999', '5 000 - 9 999', '10 000 - 14 999', '15 000 - 19 999', '20 000 - 24 999', '25 000 - 29 999', '30 000 - 34 999', '35 000 -  39 999', '40 000 - 44 999',
  '45 000 - 49 999', '50 000 - 54 999', '55 000 - 59 999', '60 000 - 64 999', '65 000 - 69 999', '70 000 - 74 999', '75 000 - 79 999', '80 000 - 84 999', '85 000 - 89 999',
  '90 000 - 94 999', '95 000 - 99 999', '100 000 - 109 999', '110 000 - 119 999', '120 000 - 129 999', '130 000 - 139 999', '140 000 - 149 999', '150 000 - 159 999', '160 000 - 169 999',
  '170 000 - 179 999', '180 000 - 189 999', '190 000 - 199 999', '200 000 - 249 999', '250 000 - 299 999', '300 000 - 349 999', '350 000 - 399 999', '400 000 - 449 999', '450 000 - 499 999','Over 500,000',
];

List<String> vitesseList=['Automatic','Manual'];
List<String> originList=['OAutomatic','OManual'];
    }

BoxDecoration boxdecoration(){
    return BoxDecoration( color: Colors.white, borderRadius: BorderRadius.all(  Radius.circular(5.0) //      
    ),border: Border.all(color: Colors.lightBlue),
  );
  }

  class SearchNotifier extends ChangeNotifier {
String marqueValue='Marque';
  String carburantValue='Carburant';
  String puissanceValue='Puissance Fiscale';
  String _kmMinValue='min';
String _kmMaxValue='max';
 String _yrMinValue='min';
 String _yrMaxValue='max';

 changeyrMinVal(String val){
    _yrMinValue= val;
   notifyListeners();
 }
 changeyrMaxVal(String val){
   _yrMaxValue = val;
   notifyListeners();
 }
 changekmMinVal(String val){
    _kmMinValue= val;
   notifyListeners();
 }
 changekmMaxVal(String val){
    _kmMaxValue= val;
   notifyListeners();
 }

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

   Widget optionalDropDown(String id,var notifier){
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

  Widget dropDownPuissance(SearchNotifier notifier){
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

  Widget optionalRowDropForCars(String id,SearchNotifier notifier){
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
Container(width: 140,
                  decoration: boxdecoration(),
                  child: Center(
                    child: DropdownButton<String>(
                       style: TextStyle(color: Colors.black),
                       underline: SizedBox(),
                    icon: Icon(Icons.keyboard_arrow_down,color: Colors.grey,),
                    hint:id=='km' ? Text(notifier._kmMinValue) : Text(notifier._yrMinValue),
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
                notifier.changekmMinVal(val);
              } else {
                  notifier.changeyrMinVal(val);
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
                           hint:id=='km' ? Text(notifier._kmMaxValue) : Text(notifier._yrMaxValue),
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
                notifier.changekmMaxVal(val);                           
              } else {
               notifier.changeyrMaxVal(val);
               } }, ),
                  ),  ),
                  ],);
  }




