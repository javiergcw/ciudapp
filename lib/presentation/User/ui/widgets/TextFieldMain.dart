import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';

class TextFieldMain extends StatelessWidget {
  const TextFieldMain({required this.label, required this.icon, Key? key})
      : super(key: key);

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        style: const TextStyle(
          fontSize: 18,
          color: UIColors.gray,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: UIColors.gray,
          contentPadding: const EdgeInsets.fromLTRB(
            20.0,
            15.0,
            20.0,
            15.0,
          ),
          prefixIcon: Icon(icon),
          hintText: label,
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.blueAccent,
              width: 32.0,
            ),
            borderRadius: BorderRadius.circular(17.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 230, 230, 230),
              width: 32.0,
            ),
            borderRadius: BorderRadius.circular(17.0),
          ),
        ),
      ),
    );
  }
}
