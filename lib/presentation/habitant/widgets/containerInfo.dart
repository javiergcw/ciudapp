import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/core/theme/styleFont.dart';

class ContainerInfo extends StatelessWidget {
  const ContainerInfo(
      {required this.label,
      required this.number,
      required this.iconData,
      this.hour = '',
      this.colorContainer = UIColors.extraLightRed,
      this.colorIcon = UIColors.lightRed,
      Key? key})
      : super(key: key);

  final String hour;
  final String label;
  final String number;
  final IconData iconData;
  final Color colorContainer;
  final Color colorIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 90,
      decoration: BoxDecoration(
        border: Border.all(
          color: UIColors.gray,
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: grayFourteen,
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.end,
                  children: [
                    Text(
                      number,
                      style: blackTwentyFiveBold,
                    ),
                    Text(
                      hour,
                      style: grayFourteen,
                    )
                  ],
                )
              ],
            ),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: colorContainer,
              ),
              child: Icon(
                iconData,
                size: 40,
                color: colorIcon,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
