import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/presentation/User/ui/widgets/buttonSelect.dart';
import 'package:uatciudapp/presentation/habitant/widgets/TextFieldBig.dart';
import 'package:uatciudapp/presentation/habitant/widgets/TextFieldForm.dart';
import 'package:uatciudapp/presentation/habitant/widgets/checkTNC.dart';
import 'package:uatciudapp/presentation/habitant/widgets/headAbstract.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBoxConst.gapH50,
        const Image(
          image: AssetImage(
            Assets.wCurriculum,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            width: double.infinity,
            height: 490,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: UIColors.gray,
                width: 2,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Wrap(
                runSpacing: 10,
                children: const [
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 40,
                    ),
                    child: HeadAbstract(
                      title: 'DESCRIPCION',
                      abstract:
                          'Categoriza y describe el reporte de la forma más adecuada',
                    ),
                  ),
                  TextFieldForm(),
                  buttonSelect(),
                  TextFieldBig(),
                  CheckboxTNC(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
