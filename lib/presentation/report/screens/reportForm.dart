import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/presentation/report/widgets/report/Photo.dart';
import 'package:uatciudapp/presentation/report/widgets/report/info.dart';
import 'package:uatciudapp/presentation/report/widgets/report/location.dart';

class ReportForm extends StatefulWidget {
  const ReportForm({Key? key}) : super(key: key);

  @override
  State<ReportForm> createState() => _ReportFormState();
}

class _ReportFormState extends State<ReportForm> {
  int _currentPage = 0;
  final PageController _controller = PageController();

  onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  final List<Widget> _pages = const [
    Photo(),
    Location(),
    Info(),
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
          Align(
            alignment: const Alignment(0.0, 0.85),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(
                _pages.length,
                (int index) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    height: (index == _currentPage) ? 14 : 5,
                    width: (index == _currentPage) ? 14 : 5,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 30,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        (25),
                      ),
                      color: (index == _currentPage)
                          ? UIColors.lightBlue
                          : UIColors.extraLightBlue,
                    ),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.9, 0.85),
            child: TextButton(
              onPressed: () {
                _controller.nextPage(
                  duration: const Duration(milliseconds: 800),
                  curve: Curves.easeInOut,
                );
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 50,
                alignment: Alignment.center,
                width: (_currentPage == (_pages.length - 1)) ? 50 : 50,
                decoration: BoxDecoration(
                  color: (_currentPage == (_pages.length - 1))
                      ? UIColors.lightRed
                      : UIColors.orange,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: (_currentPage == (_pages.length - 1))
                    ? GestureDetector(
                        onTap: () {
                          context.go('/finish');
                        },
                        child: const Icon(
                          Icons.upload_file,
                          color: Colors.white,
                          size: 30,
                        ))
                    : const Icon(
                        Icons.east,
                        color: Colors.white,
                        size: 30,
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
