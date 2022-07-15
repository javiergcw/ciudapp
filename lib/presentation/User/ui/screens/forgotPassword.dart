import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/core/theme/styleFont.dart';
import 'package:uatciudapp/presentation/User/ui/widgets/ButtonRed.dart';
import 'package:uatciudapp/presentation/User/ui/widgets/TextFieldMain.dart';
import 'package:uatciudapp/presentation/User/ui/widgets/titleMain.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

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
                Assets.puzzle,
              ),
            ),
            SizedBoxConst.gapH40,
            TitleMain(
              label: 'Recuperar contraseña',
            ),
            SizedBoxConst.gapH20,
            Text(
              'No se preocupe, esta bien, ingrese la dirección asociada con su cuenta',
              style: blackEighteen,
            ),
            SizedBoxConst.gapH30,
            TextFieldMain(
              label: 'Correo electronico',
              icon: Icons.alternate_email,
            ),
            SizedBoxConst.gapH40,
            ButtonRed(
              label: 'Enviar',
            ),
          ],
        ),
      ),
    );
  }
}
