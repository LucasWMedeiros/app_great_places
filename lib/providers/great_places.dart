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
}