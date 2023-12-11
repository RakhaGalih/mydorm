import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mydorm/constants/constant.dart';

class MySearchBox extends StatelessWidget {
  const MySearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: kBlueGrey, width: 1),
              borderRadius: BorderRadius.circular(5),
            ),
            child: const TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Cari',
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: kBlueGrey),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: kBlueGrey, width: 1),
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Icon(FontAwesomeIcons.filter)),
      ],
    );
  }
}
