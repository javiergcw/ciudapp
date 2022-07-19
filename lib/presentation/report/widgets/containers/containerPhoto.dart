import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';

class ContainerPhoto extends StatelessWidget {
  const ContainerPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        SizedBox(
          height: 220,
          width: 220,
          child: CircleAvatar(
            backgroundColor: UIColors.grayCD,
            child: Icon(
              Icons.image,
              size: 50,
              color: UIColors.gray7A,
            ),
          ),
        ),
        Positioned(
          right: 10,
          bottom: 2,
          child: SizedBox(
            height: 60,
            width: 60,
            child: CircleAvatar(
              backgroundColor: UIColors.lightRed,
              child: Icon(
                Icons.photo_camera,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
