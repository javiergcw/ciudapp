import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/core/theme/styleFont.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 122,
        child: Stack(
          children: [
            Align(
              alignment: const Alignment(1, 1.5),
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: UIColors.lightRed,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              width: double.infinity,
              height: 120,
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: UIColors.gray,
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    spacing: 20,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: UIColors.gray20),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Javier Garcia',
                            style: blackNineteenBold,
                          ),
                          Text(
                            'Javier.garciac@ciudapp.com',
                            style: grayFourteen,
                          ),
                        ],
                      ),
                      Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                          color: UIColors.marineBlue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            'CIU',
                            style: whiteFifteen,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
