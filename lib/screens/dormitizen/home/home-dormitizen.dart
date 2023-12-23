import 'package:flutter/material.dart';
import 'package:mydorm/components/bottom_nav_dormitizen.dart';
import 'package:mydorm/components/carousel.dart';
import 'package:mydorm/components/table_calendar.dart';
import 'package:mydorm/constants/constant.dart';
import 'package:mydorm/screens/admin/app/pusat_bantuan/report.dart';
import 'package:mydorm/screens/dormitizen/notification.dart';

class Home extends StatelessWidget {
  final void Function() onTapPaket;
  final void Function() onTapProfil;
  const Home({
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
              child: Stack(
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
                    ]),
                  ),
                  SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Selamat pagi,',
                                    style: kSemiBoldTextStyle.copyWith(
                                        color: kWhite, fontSize: 15),
                                  ),
                                  Text(
                                    'Rakha',
                                    style: kBoldTextStyle.copyWith(
                                        color: kWhite, fontSize: 20),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Report()));
                                },
                                child: const Icon(
                                  Icons.warning,
                                  size: 25,
                                  color: kWhite,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const NotificationView()));
                                },
                                child: const Icon(
                                  Icons.notifications,
                                  size: 25,
                                  color: kWhite,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            'Pengumuman',
                            style: kSemiBoldTextStyle.copyWith(
                                fontSize: 14, color: kWhite),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const MyCarousel(),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 20),
                          padding: const EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            color: kRed,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(children: [
                            const Icon(
                              Icons.info_outline,
                              size: 18,
                              color: kWhite,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Kunci Anda Sekarang berada di ',
                              style: kRegularTextStyle.copyWith(
                                  color: kWhite, fontSize: 12),
                            ),
                            Text(
                              'Helpdesk',
                              style: kBoldTextStyle.copyWith(
                                  color: kWhite, fontSize: 12),
                            )
                          ]),
                        ),
                        const MyCalendar(),
                        const SizedBox(
                          height: 150,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            BotNavDormitizen(
              onTapPaket: onTapPaket,
              onTapProfil: onTapProfil,
            )
          ],
        ),
      ),
    );
  }
}
