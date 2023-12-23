import 'package:flutter/material.dart';
import 'package:mydorm/constants/constant.dart';

class BoxForm extends StatelessWidget {
  final String title;
  final String guideText;
  final bool desc;

  const BoxForm({
    super.key,
    required this.title,
    required this.guideText,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: kBoldTextStyle.copyWith(fontSize: 15),
      ),
      const SizedBox(
        height: 15,
      ),
      if (desc == true)
        (TextFormField(
            maxLines: 4,
            decoration: InputDecoration(
              hintText: guideText,
              filled: true,
              fillColor: kWhite,
              enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
            )))
      else
        (TextFormField(
            decoration: InputDecoration(
          hintText: guideText,
          filled: true,
          fillColor: kWhite,
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
        )))
    ]);
  }
}
