import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mydorm/constants/constant.dart';
import 'package:mydorm/templates/pengumuman.dart';

class MyCarousel extends StatefulWidget {
  const MyCarousel({super.key});

  @override
  State<MyCarousel> createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {
  int _selectedIndex = 0;
  PageController pageController =
      PageController(initialPage: 99, viewportFraction: 0.8);
  List<Pengumuman> pengumumans = [
    Pengumuman('Pengurasan Air', '11 November 2023', kGradientBlue),
    Pengumuman('Welcoming Party', '12 Desember 2023', kGradientGreen),
    Pengumuman('Meet', '26 Desember 2023', kGradientOrange),
  ];
  void setInterval() {
    Duration periodic = const Duration(seconds: 6);
    Timer.periodic(periodic, (intervalTime) {
      pageController.nextPage(
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeInOutQuint);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setInterval();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //carousel
        SizedBox(
          height: 200,
          child: PageView.builder(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index % pengumumans.length;
                });
                print(_selectedIndex);
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient:
                            pengumumans[index % pengumumans.length].gradient,
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage('images/fluid.png'),
                            fit: BoxFit.fill),
                        boxShadow: [basicDropShadow]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          pengumumans[index % pengumumans.length].title,
                          style: kBoldTextStyle.copyWith(
                              color: kWhite, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          pengumumans[index % pengumumans.length].tanggal,
                          style: kMediumTextStyle.copyWith(
                              fontSize: 14, color: kWhite),
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
        const SizedBox(
          height: 10,
        ),
        //indicator
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              pengumumans.length,
              (index) => AnimatedContainer(
                margin: const EdgeInsets.only(right: 6),
                height: 5,
                width: (index == _selectedIndex) ? 25 : 12,
                decoration: BoxDecoration(
                    color: (index == _selectedIndex)
                        ? Colors.black.withOpacity(0.75)
                        : Colors.black.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(2.5)),
                duration: const Duration(milliseconds: 450),
                curve: Curves.easeInOutQuint,
              ),
            ))
      ],
    );
  }
}
