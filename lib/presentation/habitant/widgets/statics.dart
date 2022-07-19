import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/core/theme/styleFont.dart';
import 'package:uatciudapp/presentation/habitant/widgets/containerInfo.dart';

class Statics extends StatelessWidget {
  const Statics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Estadisticas',
          style: blackTwentyFour,
        ),
        Wrap(
          children: const [
            ContainerInfo(
              iconData: Icons.report_gmailerrorred,
              label: 'Reportes activos',
              number: '10',
            ),
            ContainerInfo(
              colorContainer: UIColors.blueDDE,
              colorIcon: UIColors.blueIntense,
              iconData: Icons.group,
              label: 'Contribucciones',
              number: '35',
            ),
            ContainerInfo(
              iconData: Icons.check,
              label: 'Reportes resueltos',
              number: '25',
            ),
            ContainerInfo(
              colorContainer: UIColors.blueDDE,
              colorIcon: UIColors.blueIntense,
              iconData: Icons.forum,
              label: 'Promedio de R.R.',
              number: '25',
              hour: ' h',
            ),
          ],
        ),
      ],
    );
  }
}
