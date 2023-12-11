import 'package:flutter/material.dart';
import 'package:mydorm/constants/constant.dart';

class PengumuanCard extends StatelessWidget {
  final Gradient gradient;
  final String title;
  final String tanggal;
  const PengumuanCard(
      {super.key,
      required this.gradient,
      required this.title,
      required this.tanggal});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
              image: AssetImage('images/fluid.png'), fit: BoxFit.fill),
          boxShadow: [basicDropShadow]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: kBoldTextStyle.copyWith(color: kWhite, fontSize: 20),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            tanggal,
            style: kMediumTextStyle.copyWith(fontSize: 14, color: kWhite),
          )
        ],
      ),
    );
  }
}
