import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/core/routes/app_routes.dart';
import 'package:uatciudapp/core/theme/styleFont.dart';
import 'package:uatciudapp/presentation/User/ui/widgets/ButtonRed.dart';
import 'package:uatciudapp/presentation/User/ui/widgets/TextFieldMain.dart';
import 'package:uatciudapp/presentation/User/ui/widgets/labelSectionLogin.dart';
import 'package:uatciudapp/presentation/User/ui/widgets/loginWith.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hola',
                style: blackFourteen,
              ),
              const Text(
                'Bienvenido de\nvuelta ciudadano',
                style: blackTwentySix,
              ),
              SizedBoxConst.gapH50,
              const TextFieldMain(
                icon: Icons.alternate_email,
                label: 'Correo electronico',
              ),
              SizedBoxConst.gapH30,
              const TextFieldMain(
                icon: Icons.lock,
                label: 'Contraseña',
              ),
              SizedBoxConst.gapH10,
              GestureDetector(
                onTap: () {
                  router.push('/forgotPassword');
                  print('go forgotPassword ');
                },
                child: const Align(
                  alignment: Alignment(0.85, 1.0),
                  child: Text(
                    'Recuperar contraseña',
                    style: blackThirteen,
                  ),
                ),
              ),
              SizedBoxConst.gapH30,
              const ButtonRed(
                label: 'Ingresar',
              ),
              SizedBoxConst.gapH50,
              const LabelSectionLogin(),
              SizedBoxConst.gapH30,
              Wrap(
                spacing: 44,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const LoginWith(
                      icon: Assets.google,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      router.push('/resetPassword');
                      print('go resetPassword ');
                    },
                    child: const LoginWith(
                      icon: Assets.facebook,
                    ),
                  ),
                  const LoginWith(
                    icon: Assets.twitter,
                  ),
                ],
              ),
              SizedBoxConst.gapH50,
              Center(
                child: GestureDetector(
                  onTap: () {
                    router.push('/register');
                  },
                  child: RichText(
                    text: const TextSpan(
                      text: '¿No eres miembro?',
                      style: blackSemiBold,
                      children: [
                        TextSpan(
                          text: ' Registrate\n                       ahora',
                          style: blue,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
