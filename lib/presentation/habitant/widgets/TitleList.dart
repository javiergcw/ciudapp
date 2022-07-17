import 'package:flutter/material.dart';
import 'package:uatciudapp/core/theme/styleFont.dart';

class TitleList extends StatelessWidget {
  const TitleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 100,
      children: const [
        Text(
          'Reportes actuales',
          style: blackTwentyFour,
        ),
        Text(
          'Ver más',
          style: blackThirteenNormal,
        ),
      ],
    );
  }
}
