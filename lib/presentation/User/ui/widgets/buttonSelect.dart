import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/core/theme/styleFont.dart';

class buttonSelect extends StatefulWidget {
  const buttonSelect({Key? key}) : super(key: key);

  @override
  State<buttonSelect> createState() => _buttonSelectState();
}

class _buttonSelectState extends State<buttonSelect> {
  String? selectedValue;
  List items = [
    'Movilidad',
    'Inseguridad',
    'Contaminación',
  ];
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        hint: Row(
          children: const [
            Icon(
              Icons.person,
              size: 20,
              color: UIColors.gray7A,
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Text(
                'Selecciona una categoria',
                style: grayFourteen,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        items: items
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
            .toList(),
        value: selectedValue,
        onChanged: (value) {
          setState(() {
            selectedValue = value as String;
          });
        },
        icon: const Icon(
          Icons.expand_more,
        ),
        iconSize: 14,
        iconEnabledColor: UIColors.blueIntense,
        iconDisabledColor: Colors.grey,
        buttonHeight: 40,
        buttonWidth: double.infinity,
        buttonPadding: const EdgeInsets.only(left: 14, right: 14),
        buttonDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: UIColors.gray20,
          ),
          color: Colors.transparent,
        ),
        itemHeight: 40,
        itemPadding: const EdgeInsets.only(left: 14, right: 14),
        dropdownMaxHeight: 200,
        dropdownPadding: null,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.white,
        ),
        dropdownElevation: 8,
        scrollbarRadius: const Radius.circular(40),
        scrollbarThickness: 6,
        scrollbarAlwaysShow: true,
        offset: const Offset(-20, 0),
      ),
    );
  }
}
