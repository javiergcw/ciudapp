import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/core/theme/styleFont.dart';

class RowInfo extends StatelessWidget {
  const RowInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Wrap(
            direction: Axis.vertical,
            spacing: 25,
            children: const [
              Icon(
                Icons.pin_drop,
                size: 34,
                color: UIColors.grayCD,
              ),
              Icon(
                Icons.alarm,
                size: 34,
                color: UIColors.grayCD,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            child: Wrap(
              direction: Axis.vertical,
              children: [
                Wrap(
                  direction: Axis.vertical,
                  children: const [
                    Text(
                      'Locacion',
                      style: grayFourteen,
                    ),
                    Text(
                      'Calle 12 # 20-222',
                      style: blackNineteen,
                    ),
                  ],
                ),
                SizedBoxConst.gapH20,
                Wrap(
                  direction: Axis.vertical,
                  children: const [
                    Text(
                      'Est. Tiempo',
                      style: grayFourteen,
                    ),
                    Text(
                      '14 Junio',
                      style: blackNineteen,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
