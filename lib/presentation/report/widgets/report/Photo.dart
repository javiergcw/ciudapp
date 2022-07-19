import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/presentation/report/widgets/containers/containerPhoto.dart';
import 'package:uatciudapp/presentation/report/widgets/containers/containerPhotoLabel.dart';

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
          SizedBox(
            height: 450,
            child: Stack(
              children: const [
                Align(
                  alignment: Alignment(0, 1),
                  child: ContainerPhotoLabel(),
                ),
                Align(
                  alignment: Alignment(0, -0.9),
                  child: ContainerPhoto(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
