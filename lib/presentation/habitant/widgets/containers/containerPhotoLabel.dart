import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/presentation/habitant/widgets/headAbstract.dart';

class ContainerPhotoLabel extends StatelessWidget {
  const ContainerPhotoLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            HeadAbstract(
              title: 'FOTO',
              abstract:
                  'Presenta una evidencia fotografica del evento que quieres reportar',
            ),
          ],
        ),
      ),
    );
    ;
  }
}
