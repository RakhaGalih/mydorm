import 'package:flutter/material.dart';
import 'package:mydorm/constants/constant.dart';

class Features extends StatelessWidget {
  final Widget screen;
  final String title;

  const Features({super.key, required this.screen, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => screen));
      },
      child: Container(
        alignment: Alignment.center,
        width: double.maxFinite,
        height: 64,
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: Colors.black45,
                offset: Offset(5.00, 5.00),
                blurRadius: 8.00)
          ],
        ),
        child: Text(title,
            style:
                kSemiBoldTextStyle.copyWith(color: Colors.black, fontSize: 16)),
      ),
    );
  }
}
