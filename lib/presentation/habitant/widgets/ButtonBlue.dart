import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/core/routes/app_routes.dart';
import 'package:uatciudapp/core/theme/styleFont.dart';

class ButtonBlue extends StatelessWidget {
  const ButtonBlue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: GestureDetector(
        onTap: () {
          router.push('/ReportForm');
        },
        child: Container(
          height: 40,
          decoration: BoxDecoration(
              color: UIColors.blueIntense,
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: const [
                Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                Text(
                  'Genera un reporte',
                  style: whiteFifteen,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
