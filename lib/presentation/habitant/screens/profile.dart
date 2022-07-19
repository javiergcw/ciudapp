import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/presentation/habitant/widgets/general.dart';
import 'package:uatciudapp/presentation/habitant/widgets/header.dart';
import 'package:uatciudapp/presentation/habitant/widgets/profileContainer.dart';
import 'package:uatciudapp/presentation/habitant/widgets/statics.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBoxConst.gapH40,
          Header(),
          ProfileContainer(),
          Statics(),
          General(),
        ],
      ),
    );
  }
}
