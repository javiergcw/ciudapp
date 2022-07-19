import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/core/theme/styleFont.dart';
import 'package:uatciudapp/presentation/Started/ui/widgets/slider.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int _currentPage = 0;
  final PageController _controller = PageController();

  onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  final List<Widget> _pages = const [
    Sliders(
      image: Assets.menBlue,
      titleMain: 'Facil Acceso',
      abstractMain:
          'Formemos una gran comunidad y mejores juntos nuestra ciudad dia a dia junto a la herramienta de reporte',
    ),
    Sliders(
        image: Assets.franquice,
        titleMain: 'Lleva el Control',
        abstractMain:
            'Junto al seguimiento puedes notar el desarrollo del problema asignado, en caso de que pase mucho tiempo se generara otra alerta'),
    Sliders(
      image: Assets.mensWithPhone,
      titleMain: 'Observa avances',
      abstractMain:
          'Eres parte de nosotros, por ese motivo puedes observar los diferentes avances que hemos realizado a la ciudad y dejar tu opinión al respecto',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: _controller,
            itemCount: _pages.length,
            onPageChanged: onChanged,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                  _pages.length,
                  (int index) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: 10,
                      width: (index == _currentPage) ? 30 : 10,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 30,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          (5),
                        ),
                        color: (index == _currentPage)
                            ? UIColors.orange
                            : UIColors.lightOrange,
                      ),
                    );
                  },
                ),
              ),
              TextButton(
                onPressed: () {
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 800),
                    curve: Curves.easeInOut,
                  );
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 70,
                  alignment: Alignment.center,
                  width: (_currentPage == (_pages.length - 1)) ? 200 : 70,
                  decoration: BoxDecoration(
                    color: UIColors.lightRed,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: (_currentPage == (_pages.length - 1))
                      ? GestureDetector(
                          onTap: () {
                            context.push('/login');
                          },
                          child: const Text(
                            '¡Inicia ya!',
                            style: whiteTwenty,
                          ))
                      : const Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 55,
                        ),
                ),
              ),
              SizedBoxConst.gapH50,
            ],
          ),
        ],
      ),
    );
  }
}
