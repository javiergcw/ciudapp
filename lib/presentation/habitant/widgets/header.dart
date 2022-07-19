import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/core/theme/styleFont.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'PERFIL',
            style: blackThirteenFour,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: UIColors.grayF2,
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Icon(
              Icons.person,
              color: UIColors.black,
            ),
          ),
        ),
      ],
    );
  }
}
