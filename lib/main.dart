// ignore_for_file: deprecated_member_use

import 'package:app_great_places/providers/great_places.dart';
import 'package:app_great_places/screens/place_form_screen.dart';
import 'package:app_great_places/screens/places_list_screen.dart';
import 'package:app_great_places/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          primarySwatch: Colors.cyan,
          accentColor: Colors.amber
        ),
        home: PlacesListScreen(),
        routes: {
          AppRoutes.PlaceForm: (context) => PlaceFormScreen(),
        },
      ),
    );
  }
}

