import 'package:flutter/material.dart';
import 'package:uatciudapp/presentation/habitant/widgets/report/info.dart';

class ReportForm extends StatelessWidget {
  const ReportForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Info()
            //Location()
            //Photo(),
          ],
        ),
      ),
    );
  }
}
