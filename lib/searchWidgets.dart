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
    'Autres','Autres',
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



    }

BoxDecoration boxdecoration(){
    return BoxDecoration(
                     color: Colors.white,
                      borderRadius: BorderRadius.all(
        Radius.circular(5.0) //      
    ),
    border: Border.all(color: Colors.grey),
  );
  }