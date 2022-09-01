import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlacesListScreen extends StatelessWidget {
  const PlacesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus Lugares'),
      ),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}