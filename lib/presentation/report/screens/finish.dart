import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/presentation/report/widgets/headAbstract.dart';

class Finish extends StatelessWidget {
  const Finish({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: 180,
          color: Colors.transparent,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Container(
            width: double.infinity,
            height: 480,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: UIColors.gray,
                width: 2,
              ),
            ),
            child: Column(
              children: [
                SizedBoxConst.gapH20,
                const Image(
                  image: AssetImage(Assets.congratulations),
                ),
                SizedBoxConst.gapH30,
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: HeadAbstract(
                    title: 'FELICIDADES',
                    abstract:
                        'Haz generado un reporte con exito, se ha guardado en nuestra base de datos.',
                  ),
                ),
                SizedBoxConst.gapH30,
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 50,
                  alignment: Alignment.center,
                  width: 50,
                  decoration: BoxDecoration(
                    color: UIColors.orange,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      context.go('/dashboard');
                    },
                    child: const Icon(
                      Icons.east,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
