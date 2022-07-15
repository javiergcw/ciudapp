import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';

class LoginWith extends StatelessWidget {
  const LoginWith({required this.icon, Key? key}) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57,
      width: 73,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: UIColors.gray,
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Image(
          image: AssetImage(
            icon,
          ),
        ),
      ),
    );
  }
}
