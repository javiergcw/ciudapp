import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';

class LabelSectionLogin extends StatelessWidget {
  const LabelSectionLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      children: [
        Line(),
        const Text(
          'Inicia sección con',
        ),
        Line(),
      ],
    );
  }
}

Widget Line() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 2,
      width: 63,
      color: UIColors.black,
    ),
  );
}
