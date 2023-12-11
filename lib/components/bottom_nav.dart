import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mydorm/constants/constant.dart';

class MyBottomNav extends StatelessWidget {
  final void Function() onTapPaket;
  final void Function() onTapBeranda;
  final void Function() onTapProfil;
  final Role role;
  final int activeIndex;
  const MyBottomNav(
      {super.key,
      required this.activeIndex,
      required this.onTapPaket,
      required this.onTapProfil,
      required this.onTapBeranda,
      required this.role});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(30),
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
              GestureDetector(
                onTap: () {
                  onTapPaket;
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      (role == Role.admin)
                          ? Icons.notifications
                          : FontAwesomeIcons.box,
                      color: (activeIndex == 0) ? kMain : Colors.black,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      (role == Role.admin) ? 'Notifikasi' : 'Paket',
                      style: kSemiBoldTextStyle.copyWith(fontSize: 12),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: onTapBeranda,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      size: 32,
                      color: (activeIndex == 1) ? kMain : Colors.black,
                    ),
                    Text(
                      'Beranda',
                      style: kSemiBoldTextStyle.copyWith(fontSize: 12),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  onTapProfil;
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.solidCircleUser,
                      color: (activeIndex == 2) ? kMain : Colors.black,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Profil',
                      style: kSemiBoldTextStyle.copyWith(fontSize: 12),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
