import 'package:avito/screens/NavPage.dart';
import 'package:avito/searchWidgets.dart';
import 'package:avito/sellListProvider/AdItemListNotifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    );
  }
}
