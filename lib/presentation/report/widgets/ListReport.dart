import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/core/theme/styleFont.dart';

class ListReport extends StatelessWidget {
  const ListReport(
      {required this.image,
      required this.labelTitle,
      required this.labelCategory,
      Key? key})
      : super(key: key);

  final String image;
  final String labelTitle;
  final String labelCategory;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: UIColors.gray,
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image(
              image: AssetImage(image),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: Wrap(
                spacing: 4,
                direction: Axis.vertical,
                children: [
                  Text(
                    labelTitle,
                    style: grayEighteen,
                  ),
                  Text(
                    labelCategory,
                    style: blackNineteen,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
