import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/core/theme/styleFont.dart';
import 'package:uatciudapp/presentation/User/ui/widgets/ButtonRed.dart';
import 'package:uatciudapp/presentation/User/ui/widgets/TextFieldMain.dart';
import 'package:uatciudapp/presentation/User/ui/widgets/titleMain.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 35,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Image(
                image: AssetImage(
                  Assets.drawing,
                ),
              ),
              const TitleMain(
                label: 'Registro',
              ),
              const TextFieldMain(
                icon: Icons.alternate_email,
                label: 'Correo electronico',
              ),
              const TextFieldMain(
                icon: Icons.person,
                label: 'Nombre completo',
              ),
              const TextFieldMain(
                icon: Icons.lock,
                label: 'Contraseña',
              ),
              const TextFieldMain(
                icon: Icons.phone_iphone,
                label: 'Celular',
              ),
              SizedBoxConst.gapH10,
              Wrap(
                children: const [
                  Text(
                    'Al registraste estas de acuerdo, ',
                    style: blackThirteenNormal,
                  ),
                  Text(
                    'Terminos y condiciones',
                    style: blueSmall,
                  ),
                  Text(
                    ' y ',
                    style: blackThirteenNormal,
                  ),
                  Text(
                    'Politicas de privacidad',
                    style: blueSmall,
                  ),
                ],
              ),
              SizedBoxConst.gapH40,
              const ButtonRed(label: 'Guardar')
            ],
          ),
        ),
      ),
    );
  }
}
