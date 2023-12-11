import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mydorm/components/apps_icon.dart';
import 'package:mydorm/components/bottom_nav.dart';
import 'package:mydorm/constants/constant.dart';
import 'package:mydorm/screens/admin/history/pengumuman_page.dart';
import 'package:mydorm/screens/admin/history/riwayat_paket.dart';

class HomeAdmin extends StatelessWidget {
  final void Function() onTapPaket;
  final void Function() onTapProfil;
  const HomeAdmin({
    super.key,
    required this.onTapPaket,
    required this.onTapProfil,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      height: 250,
                      child: Stack(children: [
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration:
                              const BoxDecoration(gradient: kGradientMain),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Image.asset('images/bg-asrama-wide.png',
                              width: width, fit: BoxFit.cover),
                        ),
                        SafeArea(
                          bottom: false,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            child: SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Selamat pagi,',
                                              style:
                                                  kSemiBoldTextStyle.copyWith(
                                                      fontSize: 15,
                                                      color: kWhite),
                                            ),
                                            Text(
                                              'Bpk Soleh',
                                              style: kBoldTextStyle.copyWith(
                                                  fontSize: 20, color: kWhite),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(3),
                                        decoration: BoxDecoration(
                                            color: kMain,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Row(
                                          children: [
                                            const SizedBox(
                                              width: 21,
                                            ),
                                            Text(
                                              'Helpdesk',
                                              style:
                                                  kSemiBoldTextStyle.copyWith(
                                                      fontSize: 15,
                                                      color: kWhite),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            const CircleAvatar(
                                              radius: 15,
                                              backgroundColor: kGray,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Dormitzen di Asrama',
                                              style:
                                                  kSemiBoldTextStyle.copyWith(
                                                      fontSize: 14,
                                                      color: kWhite),
                                            ),
                                            Text(
                                              '110',
                                              style: kBoldTextStyle.copyWith(
                                                  fontSize: 45, color: kWhite),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Dormitzen di Luar',
                                              style:
                                                  kSemiBoldTextStyle.copyWith(
                                                      fontSize: 14,
                                                      color: kWhite),
                                            ),
                                            Text(
                                              '50',
                                              style: kBoldTextStyle.copyWith(
                                                  fontSize: 45, color: kWhite),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Request Dormitizen',
                            style: kBoldTextStyle.copyWith(fontSize: 14),
                          ),
                          SizedBox(
                            height: 200,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(child: Image.asset('images/women.png')),
                                const SizedBox(
                                  height: 10,
                                ),
                                Center(
                                  child: Text(
                                    'Tidak ada request',
                                    style: kBoldTextStyle.copyWith(
                                        fontSize: 14, color: kGrey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Apps',
                                style: kBoldTextStyle.copyWith(fontSize: 14),
                              ),
                              Text(
                                'Lainnya',
                                style: kMediumTextStyle.copyWith(
                                    fontSize: 14, color: kMain),
                              ),
                            ],
                          ),
                          const Wrap(
                            children: [
                              AppsIcon(
                                icon: FontAwesomeIcons.box,
                                title: 'Paket',
                                pushWidget: HistoryPaket(),
                              ),
                              AppsIcon(
                                icon: FontAwesomeIcons.newspaper,
                                title: 'Informasi',
                                pushWidget: PengumumanPage(),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )),
            MyBottomNav(
                activeIndex: 1,
                onTapPaket: onTapPaket,
                onTapProfil: onTapProfil,
                onTapBeranda: () {},
                role: Role.admin)
          ],
        ),
      ),
    );
  }
}
