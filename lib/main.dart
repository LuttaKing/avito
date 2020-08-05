import 'package:avito/AuthFolder/graphqlApi.dart';
import 'package:avito/screens/NavPage.dart';
import 'package:avito/searchWidgets.dart';
import 'package:avito/sellListProvider/AdItemListNotifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return AdItemNotifier();
      },
      child: ChangeNotifierProvider(
        create: (BuildContext context) {
          return SearchNotifier();
        },
        child: GraphQLProvider(
          client: client,
                  child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'App Name',
            theme: ThemeData(
              primarySwatch: Colors.deepOrange,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: NavPage(),
          
          ),
        ),
      ),
    );
  }
}

// class TestGraphql extends StatefulWidget {
//   @override
//   _TestGraphqlState createState() => _TestGraphqlState();
// }

// class _TestGraphqlState extends State<TestGraphql> {

//   String readCategories = """
//                           query getCategories{
//                             allCategories{
//                               name
//                               ingredients{
//                                 name
//                                 notes
//                               }
//                             }
//                           }
//                           """;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('GraphQl'),),
//       body: Container(color: Colors.white,
//       child: Center(
//         child: Query(options: QueryOptions(documentNode: gql(readCategories)),
//          builder: (QueryResult result, { VoidCallback refetch, FetchMore fetchMore }) { 
//             if (result.hasException) {
//           return Text(result.exception.toString());
//     }

//     if (result.loading) {
//         return Text('Loading');
//     }

//     // it can be either Map or List
//     List catgories=result.data['allCategories'];

//     return ListView.builder(
//         itemCount: catgories.length,
//         itemBuilder: (context, index) {
//           final category = catgories[index];
// print(category);
//           return Column(
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.all(5.0),
//                 child: Text(category['name'],style: TextStyle(color: Colors.green,fontSize: 18),),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(2.0),
//                 child: Text(category['ingredients'][0]['name'],style: TextStyle(fontSize: 14),),
//               ),
              
//               Padding(
//                 padding: const EdgeInsets.all(2.0),
//                 child: Text(category['ingredients'][0]['notes'],style: TextStyle(fontSize: 14),),
//               ),
//             ],
//           );
//     });
//           },),
//       ),),
      
//     );
//   }
// }
