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
        const Image(
          image: AssetImage(Assets.sProfile),
        ),
        containerLocation(),
      ],
    );
  }
}

Widget containerLocation() {
  return Container(
    width: double.infinity,
    height: 400,
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
        ContainerData(),
      ],
    ),
  );
}

Widget containerLocationLabel() {
  return Padding(
    padding: const EdgeInsets.all(65),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
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
      ],
    ),
  );
}

Widget ContainerData() {
  return Stack(
    children: [
      Column(
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
              children: [
                const RowInfo(),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 130,
                    width: 130,
                    child: const Image(
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
    ],
  );
}
