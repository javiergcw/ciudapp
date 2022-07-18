import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/core/theme/styleFont.dart';
import 'package:uatciudapp/presentation/User/ui/widgets/TextFieldMain.dart';
import 'package:uatciudapp/presentation/habitant/widgets/textFieldForm.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  String _title = 'Seleccione una categoria';
  Object? _categoryVal;
  List _categoryName = [
    'Movilidad',
    'Inseguridad',
    'Contaminación',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Image(
          image: AssetImage(
            Assets.wCurriculum,
          ),
        ),
        Container(
          width: double.infinity,
          height: 410,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: UIColors.gray,
              width: 2,
            ),
          ),
          child: Column(
            children: [
              const Text('DESCRIPCION'),
              const Text(
                  'Categoriza y describe el reporte de la forma más adecuada'),
              const TextFieldForm(
                icon: Icons.title,
                label: 'Titulo',
              ),
              const TextFieldForm(
                icon: Icons.title,
                label: 'Titulo',
              ),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                ),
                hint: const Text(
                  'Seleccione una categoria',
                ),
                items: <String>[
                  'Movilidad',
                  'Inseguridad',
                  'Contaminación',
                ].map(
                  (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  },
                ).toList(),
                onChanged: (_) {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
