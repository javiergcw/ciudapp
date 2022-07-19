import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/core/theme/styleFont.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: const Alignment(1.0, 1.0),
          child: GestureDetector(
            onTap: () {
              print('go profile');
            },
            child: GestureDetector(
              onTap: () {
                context.push('/profile');
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: UIColors.grayF2,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(
                  Icons.person,
                  color: UIColors.black,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          direction: Axis.vertical,
          children: const [
            Text(
              'Bienvenido de vuelta',
              style: blackTwentyFive,
            ),
            Text(
              'Javier Garcia',
              style: blackThirteenFour,
            ),
          ],
        ),
      ],
    );
  }
}
