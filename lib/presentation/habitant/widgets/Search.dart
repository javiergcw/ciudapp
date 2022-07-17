import 'package:flutter/material.dart';
import 'package:uatciudapp/core/res/res.dart';
import 'package:uatciudapp/presentation/User/ui/widgets/TextFieldMain.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      children: [
        SizedBox(
          height: 45,
          width: 280,
          child: TextField(
            style: const TextStyle(
              fontSize: 18,
              color: UIColors.gray,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.fromLTRB(
                20.0,
                15.0,
                20.0,
                15.0,
              ),
              prefixIcon: const Icon(Icons.search),
              hintText: 'Buscar un reporte',
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.blueAccent,
                  width: 32.0,
                ),
                borderRadius: BorderRadius.circular(17.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: UIColors.gray,
                ),
                borderRadius: BorderRadius.circular(17.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 230, 230, 230),
                  width: 32.0,
                ),
                borderRadius: BorderRadius.circular(17.0),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            print('opcions');
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: UIColors.gray,
                width: 2,
              ),
            ),
            width: 50,
            height: 45,
            child: const Icon(
              Icons.tune,
              color: UIColors.gray20,
            ),
          ),
        ),
      ],
    );
  }
}
