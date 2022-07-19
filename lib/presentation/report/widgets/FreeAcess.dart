import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/core/theme/styleFont.dart';

class FreeAccess extends StatelessWidget {
  const FreeAccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 122,
      child: Stack(
        children: [
          Align(
            alignment: const Alignment(1, 1.5),
            child: Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: UIColors.lightRed,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            width: double.infinity,
            height: 120,
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: UIColors.gray,
                  width: 2,
                ),
              ),
              height: 100,
            ),
          ),
          const Positioned(
            top: 7,
            right: 5,
            child: SizedBox(
              height: 115,
              width: 150,
              child: Image(
                image: AssetImage(
                  Assets.mensWithTable,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 15,
            top: 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Acceso Gratuito',
                  style: blackNineteenBold,
                ),
                Text(
                  'Recuerda contribuir solo con\naportes veracez a la ciudad.',
                  style: grayFourteen,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
