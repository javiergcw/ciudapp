import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';

class TextFieldForm extends StatelessWidget {
  const TextFieldForm({required this.icon, required this.label, Key? key})
      : super(key: key);

  final IconData icon;
  final String label;
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
        prefixIcon: Icon(icon),
        hintText: label,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }
}
