import 'package:flutter/material.dart';
import 'package:uatciudapp/core/theme/styleFont.dart';

class General extends StatefulWidget {
  const General({Key? key}) : super(key: key);

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  @override
  Widget build(BuildContext context) {
    bool _expanded = false;
    var _test = "Full Screen";
    return Column(
      children: [
        const Text(
          'General',
          style: blackTwentyFour,
        ),
        Container(
          margin: const EdgeInsets.all(10),
          color: Colors.green,
          child: ExpansionPanelList(
            animationDuration: const Duration(milliseconds: 2000),
            children: [
              ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return const ListTile(
                    title: Text(
                      'Click To Expand',
                      style: TextStyle(color: Colors.black),
                    ),
                  );
                },
                body: const ListTile(
                  title: Text('Description text',
                      style: TextStyle(color: Colors.black)),
                ),
                isExpanded: _expanded,
                canTapOnHeader: true,
              ),
            ],
            dividerColor: Colors.grey,
            expansionCallback: (panelIndex, isExpanded) {
              _expanded = !_expanded;
              setState(() {});
            },
          ),
        ),
      ],
    );
  }
}
