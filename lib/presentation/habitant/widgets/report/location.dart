import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/core/theme/styleFont.dart';
import 'package:uatciudapp/presentation/habitant/widgets/RowInfo.dart';

class Location extends StatelessWidget {
  const Location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBoxConst.gapH50,
        const Image(
          image: AssetImage(Assets.sProfile),
        ),
        SizedBoxConst.gapH30,
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Container(
            width: double.infinity,
            height: 410,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: UIColors.gray,
                width: 2,
              ),
            ),
            child: Column(
              children: [
                containerLocationLabel(),
                containerData(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Widget containerLocationLabel() {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 40,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        SizedBoxConst.gapH30,
        Text(
          'ESPACIO Y TIEMPO',
          style: blackTwentyFiveBold,
          textAlign: TextAlign.center,
        ),
        SizedBoxConst.gapH20,
        Text(
          'Añade la ubicación y fecha exacta donde ocurre el problema',
          style: grayEighteen,
          textAlign: TextAlign.center,
        ),
        SizedBoxConst.gapH10,
      ],
    ),
  );
}

Widget containerData() {
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: 340,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: UIColors.gray,
                  width: 2,
                ),
              ),
              child: Stack(
                children: const [
                  RowInfo(),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: SizedBox(
                      height: 120,
                      width: 120,
                      child: Image(
                        image: AssetImage(Assets.building),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
