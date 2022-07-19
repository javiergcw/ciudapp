import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/presentation/report/widgets/ListReport.dart';
import 'package:uatciudapp/presentation/report/widgets/ButtonBlue.dart';
import 'package:uatciudapp/presentation/report/widgets/FreeAcess.dart';
import 'package:uatciudapp/presentation/report/widgets/Search.dart';
import 'package:uatciudapp/presentation/report/widgets/TitleList.dart';
import 'package:uatciudapp/presentation/report/widgets/Welcome.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 60,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Welcome(),
              FreeAccess(),
              SizedBoxConst.gapH30,
              ButtonBlue(),
              SizedBoxConst.gapH10,
              Search(),
              SizedBoxConst.gapH20,
              TitleList(),
              SizedBoxConst.gapH10,
              ListReport(
                image: Assets.happy,
                labelTitle: 'Carretera principal',
                labelCategory: 'Movilidad',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
