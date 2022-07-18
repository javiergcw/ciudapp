import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/presentation/habitant/widgets/containers/containerData.dart';
import 'package:uatciudapp/presentation/habitant/widgets/containers/containerLocationLabel.dart';

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
              children: const [
                ContainerLocationLabel(),
                ContainerData(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
