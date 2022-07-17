import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/core/theme/styleFont.dart';

class Photo extends StatelessWidget {
  const Photo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 30,
      ),
      child: Column(
        children: [
          const Align(
            alignment: Alignment(0, 0.5),
            child: Image(
              image: AssetImage(Assets.girls),
            ),
          ),
          SizedBoxConst.gapH30,
          together(),
        ],
      ),
    );
  }
}

Widget together() {
  return SizedBox(
    height: 450,
    child: Stack(
      children: [
        Align(
          alignment: const Alignment(0, 1),
          child: containerPhotoLabel(),
        ),
        Align(
          alignment: const Alignment(0, -0.9),
          child: containerPhoto(),
        ),
      ],
    ),
  );
}

Widget containerPhotoLabel() {
  return Container(
    width: double.infinity,
    height: 265,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: UIColors.gray,
        width: 2,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(65),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            'FOTO',
            style: blackTwentyFiveBold,
            textAlign: TextAlign.center,
          ),
          SizedBoxConst.gapH20,
          Text(
            'Presenta una evidencia fotografica del evento que quieres reportar',
            style: grayEighteen,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}

Widget containerPhoto() {
  return Stack(
    children: const [
      SizedBox(
        height: 220,
        width: 220,
        child: CircleAvatar(
          backgroundColor: UIColors.grayCD,
          child: Icon(
            Icons.image,
            size: 50,
            color: UIColors.gray7A,
          ),
        ),
      ),
      Positioned(
        right: 10,
        bottom: 2,
        child: SizedBox(
          height: 60,
          width: 60,
          child: CircleAvatar(
            backgroundColor: UIColors.lightRed,
            child: Icon(
              Icons.photo_camera,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ],
  );
}
