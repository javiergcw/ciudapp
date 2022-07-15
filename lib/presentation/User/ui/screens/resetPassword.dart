import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/presentation/User/ui/widgets/ButtonRed.dart';
import 'package:uatciudapp/presentation/User/ui/widgets/TextFieldMain.dart';
import 'package:uatciudapp/presentation/User/ui/widgets/titleMain.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 90,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Image(
              image: AssetImage(
                Assets.padlock,
              ),
            ),
            SizedBoxConst.gapH40,
            TitleMain(
              label: 'Nueva contraseña',
            ),
            SizedBoxConst.gapH20,
            TextFieldMain(
              label: 'Nueva contraseña',
              icon: Icons.lock,
            ),
            TextFieldMain(
              label: 'Confirma tu contraseña',
              icon: Icons.lock,
            ),
            SizedBoxConst.gapH30,
            ButtonRed(
              label: 'Enviar',
            ),
          ],
        ),
      ),
    );
  }
}
