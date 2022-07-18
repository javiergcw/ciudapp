import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/core/theme/styleFont.dart';

class Sliders extends StatelessWidget {
  const Sliders(
      {required this.image,
      required this.titleMain,
      required this.abstractMain,
      Key? key})
      : super(key: key);

  final String image;
  final String titleMain;
  final String abstractMain;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 80,
        horizontal: 25,
      ),
      child: Column(
        children: [
          Image(
            image: AssetImage(
              image,
            ),
          ),
          SizedBoxConst.gapH30,
          Text(
            titleMain,
            style: blueFourty,
          ),
          SizedBoxConst.gapH30,
          Text(
            abstractMain,
            style: blackEighteen,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
