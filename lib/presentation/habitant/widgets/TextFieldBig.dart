import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';

class TextFieldBig extends StatelessWidget {
  const TextFieldBig({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: UIColors.blueIntense,
            width: 32.0,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        contentPadding: const EdgeInsets.all(20),
        fillColor: Colors.white,
        //prefixIcon: Icon(icon),
        hintText: 'Escribe una descripcion aqui',
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
      ),
      keyboardType: TextInputType.multiline,
      maxLines: 4,
    );
  }
}
