import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/presentation/report/widgets/headAbstract.dart';

class ContainerLocationLabel extends StatelessWidget {
  const ContainerLocationLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBoxConst.gapH30,
          HeadAbstract(
            title: 'ESPACIO Y TIEMPO',
            abstract:
                'Añade la ubicación y fecha exacta donde ocurre el problema',
          ),
          SizedBoxConst.gapH10,
        ],
      ),
    );
  }
}
