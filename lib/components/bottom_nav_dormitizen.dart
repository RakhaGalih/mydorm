import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mydorm/constants/constant.dart';

class BotNavDormitizen extends StatefulWidget {
  const BotNavDormitizen({super.key});

  @override
  State<BotNavDormitizen> createState() => _BotNavDormitizenState();
}

class _BotNavDormitizenState extends State<BotNavDormitizen> {
  bool _masuk = true;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 64,
                padding: const EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                    color: kWhite,
                    boxShadow: [basicDropShadow],
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(FontAwesomeIcons.box),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Paket',
                          style: kSemiBoldTextStyle.copyWith(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(FontAwesomeIcons.solidCircleUser),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Profil',
                          style: kSemiBoldTextStyle.copyWith(fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: double.infinity,
                height: 100,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _masuk = !_masuk;
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, gradient: kGradientMain),
                        child: Icon(
                          (_masuk)
                              ? FontAwesomeIcons.doorClosed
                              : FontAwesomeIcons.doorOpen,
                          color: kWhite,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        (_masuk) ? 'Masuk' : 'Keluar',
                        style: kSemiBoldTextStyle.copyWith(
                            fontSize: 14, color: kRed),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
