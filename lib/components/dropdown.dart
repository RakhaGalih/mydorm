import 'package:flutter/material.dart';
import 'package:mydorm/constants/constant.dart';

const List<String> list = <String>['Masuk Asrama', 'Keluar Asrama'];

class DropDownBox extends StatefulWidget {
  const DropDownBox({super.key});

  @override
  State<DropDownBox> createState() => _Dropdownbox();
}

class _Dropdownbox extends State<DropDownBox> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
        width: 200,
        inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: kWhite,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black))),
        initialSelection: list.first,
        onSelected: (String? value) {
          setState(() {
            dropdownValue = value!;
          });
        },
        dropdownMenuEntries:
            list.map<DropdownMenuEntry<String>>((String value) {
          return DropdownMenuEntry<String>(value: value, label: value);
        }).toList());
  }
}
