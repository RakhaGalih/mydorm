import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:mydorm/screens/auth/login.dart';

import '../constants/constant.dart';

class RoleCard extends StatelessWidget {
  final double width;
  final double height;
  final String image;
  final String title;
  const RoleCard(
      {super.key,
      required this.width,
      required this.height,
      required this.image,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Login()));
      },
      child: BlurryContainer(
        blur: 5,
        width: width * 0.52,
        height: width * 0.52,
        elevation: 0,
        color: kWhite.withOpacity(0.2),
        padding: const EdgeInsets.all(8),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: width * 0.28,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: kMediumTextStyle.copyWith(color: kWhite, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
