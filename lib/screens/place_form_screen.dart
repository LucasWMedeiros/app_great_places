// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'dart:io';

import 'package:app_great_places/providers/great_places.dart';
import 'package:app_great_places/widgets/image_input.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PlaceFormScreen extends StatefulWidget {
  PlaceFormScreen({Key? key}) : super(key: key);

  @override
  State<PlaceFormScreen> createState() => _PlaceFormScreenState();
}

class _PlaceFormScreenState extends State<PlaceFormScreen> {
  final _tittleControler = TextEditingController();
  File? _pickedImage;

  void _selectImage(File pickedImage) {
    _pickedImage = pickedImage;
  }

  void _submitForm() {
    if (_tittleControler.text.isEmpty || _pickedImage == null) {
      return;
    }

    Provider.of<GreatPlaces>(context, listen: false).addPlace(
      _tittleControler.text,
      _pickedImage!,
    );

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Novo Lugar'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Titulo',
                      ),
                      controller: _tittleControler,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ImageInput(onSelectImage: this._selectImage),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: _submitForm,
              style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).accentColor, elevation: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [Icon(Icons.add), Text('Adicionar')],
              ),
            )
          ],
        ));
  }
}
