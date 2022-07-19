import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';

class TextFieldForm extends StatelessWidget {
  const TextFieldForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: UIColors.blueIntense,
              width: 32.0,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          contentPadding: const EdgeInsets.all(10),
          fillColor: Colors.white,
          prefixIcon: const Icon(Icons.title),
          hintText: 'Titulo',
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
