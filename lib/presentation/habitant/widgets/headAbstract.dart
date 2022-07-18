import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/core/theme/styleFont.dart';

class HeadAbstract extends StatelessWidget {
  const HeadAbstract({required this.title, required this.abstract, Key? key})
      : super(key: key);

  final String title;
  final String abstract;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: blackTwentyFiveBold,
          textAlign: TextAlign.center,
        ),
        SizedBoxConst.gapH20,
        Text(
          abstract,
          style: grayEighteen,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
