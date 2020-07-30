import 'package:avito/sellListProvider/AdItemModel.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AdItemNotifier extends ChangeNotifier {
  List<AdItemModel> _adList = [];

  addItemtoList(String category, String title, String description, String price,String location, List<File> imageList) {
    AdItemModel _adItem = AdItemModel(
        title: title,
        category: category,
        price: price,
        description: description,
        location: location,
        imageFileList: imageList);
        
    _adList.add(_adItem);
    notifyListeners();
  }
}
