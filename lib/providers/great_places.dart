import 'dart:io';
import 'dart:math';

import 'package:app_great_places/models/place.dart';
import 'package:flutter/cupertino.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get item {
    return [..._items];
  }

  int get itemsCount {
    return _items.length;
  }

  Place getItem(int index){
    return _items[index];
  }

  void addPlace(String title, File image) {
    final newPlace = Place(
      id: Random().nextDouble().toString(),
      title: title,
      image: image,
      location: null
    );
    
    _items.add(newPlace);
    notifyListeners();
  }
}