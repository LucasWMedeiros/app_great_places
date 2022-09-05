import 'package:flutter/material.dart';

class ImageInput extends StatefulWidget {
  ImageInput({Key? key}) : super(key: key);

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 180,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
          ),
          alignment: Alignment.center,
          child: Text('Nenhuma imagem!'),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: TextButton(
            onPressed: (){},
            child: Row(
              children: const [
                Icon(Icons.camera),
                SizedBox(width: 5,),
                Text('Tirar Foto'),
              ],
            ),
            // icon: Icon(Icons.camera),
          ),
        )
      ],
    );
  }
}
