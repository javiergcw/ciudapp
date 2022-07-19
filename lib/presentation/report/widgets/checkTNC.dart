import 'package:flutter/material.dart';
import 'package:uatciudapp/core/theme/styleFont.dart';

class CheckboxTNC extends StatefulWidget {
  const CheckboxTNC({Key? key}) : super(key: key);

  @override
  State<CheckboxTNC> createState() => _CheckboxTNCState();
}

class _CheckboxTNCState extends State<CheckboxTNC> {
  //bool _checked = false;
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Checkbox(
          value: value,
          onChanged: (value) => setState(
            () => this.value = value!,
          ),
        ),
        const Text(
          'Acepto las ',
          style: grayFourteen,
        ),
        const Text(
          'condiciones de uso',
          style: blueFourteen,
        )
      ],
    );
  }
}
