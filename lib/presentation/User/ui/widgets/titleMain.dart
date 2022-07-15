import 'package:flutter/material.dart';
import 'package:uatciudapp/core/theme/styleFont.dart';

class TitleMain extends StatelessWidget {
  const TitleMain({required this.label, Key? key}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: blackFourteen,
    );
  }
}
