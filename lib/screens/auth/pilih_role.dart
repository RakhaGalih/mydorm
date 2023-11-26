import 'package:flutter/material.dart';
import 'package:mydorm/components/role_card.dart';
import 'package:mydorm/constants/constant.dart';

class PIlihRole extends StatelessWidget {
  const PIlihRole({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(gradient: kGradientMain),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset('images/bg-asrama.png',
                width: width, fit: BoxFit.fitHeight),
          ),
          SafeArea(
            child: SizedBox(
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height * 0.08,
                  ),
                  Text(
                    "Pilih role Anda",
                    style: kSemiBoldTextStyle.copyWith(color: kWhite),
                  ),
                  SizedBox(
                    height: height * 0.15,
                  ),
                  RoleCard(
                      width: width,
                      height: height,
                      image: 'images/dormitizen.png',
                      title: 'Dormitizen'),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  RoleCard(
                      width: width,
                      height: height,
                      image: 'images/helpdesk.png',
                      title: 'Helpdesk')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
