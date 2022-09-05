// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:app_great_places/widgets/image_input.dart';
import 'package:flutter/material.dart';

class PlaceFormScreen extends StatefulWidget {
  PlaceFormScreen({Key? key}) : super(key: key);

  @override
  State<PlaceFormScreen> createState() => _PlaceFormScreenState();
}

class _PlaceFormScreenState extends State<PlaceFormScreen> {
  final _tittleControler = TextEditingController();

  void _submitForm(){

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
                    ImageInput(),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: _submitForm,
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).accentColor,
                elevation: 0
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.add),
                  Text('Adicionar')
                ],
              ),
            )
          ],
        ));
  }
}
