import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/presentation/report/widgets/RowInfo.dart';

class ContainerData extends StatelessWidget {
  const ContainerData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                width: 340,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: UIColors.gray,
                    width: 2,
                  ),
                ),
                child: Stack(
                  children: const [
                    RowInfo(),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: SizedBox(
                        height: 120,
                        width: 120,
                        child: Image(
                          image: AssetImage(Assets.building),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
