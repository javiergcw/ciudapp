import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/core/routes/app_routes.dart';

class ButtonRed extends StatelessWidget {
  const ButtonRed({required this.label, Key? key}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
        onPressed: () {
          router.push('/dashboard');
        },
        child: Text(
          label.toUpperCase(),
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(
            Colors.white,
          ),
          backgroundColor: MaterialStateProperty.all(UIColors.lightRed),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: const BorderSide(
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
