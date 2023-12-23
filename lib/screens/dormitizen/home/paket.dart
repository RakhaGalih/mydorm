import 'package:flutter/material.dart';
import 'package:mydorm/components/bottom_nav.dart';
import 'package:mydorm/components/paket_card.dart';
import 'package:mydorm/constants/constant.dart';
import 'package:mydorm/templates/paket.dart';

class PaketDormitizen extends StatelessWidget {
  final void Function() onTapBeranda;
  final void Function() onTapProfil;
  const PaketDormitizen(
      {super.key, required this.onTapBeranda, required this.onTapProfil});

  @override
  Widget build(BuildContext context) {
    final List<Paket> pakets = [
      Paket(
          namaBarang: 'Nama Barang',
          role: Role.admin,
          time: DateTime(2023, 9, 7, 19)),
      Paket(
          namaBarang: 'Nama Barang',
          role: Role.dormitizen,
          time: DateTime(2023, 11, 6, 20))
    ];
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Paket kamu akan',
                                          style: kSemiBoldTextStyle.copyWith(
                                              color: kWhite, fontSize: 15),
                                        ),
                                        Text(
                                          'Teracatat di sini!',
                                          style: kSemiBoldTextStyle.copyWith(
                                              color: kWhite, fontSize: 15),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    const Icon(
                                      Icons.warning,
                                      size: 25,
                                      color: kWhite,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Icon(
                                      Icons.notifications,
                                      size: 25,
                                      color: kWhite,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Cari Paket :',
                                  style: kSemiBoldTextStyle.copyWith(
                                      fontSize: 14, color: kWhite),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border:
                                        Border.all(color: kBlueGrey, width: 1),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Nama Barang',
                                        prefixIcon: Icon(Icons.search),
                                        prefixIconColor: kBlueGrey),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Paket belum diambil :',
                            style: kBoldTextStyle.copyWith(fontSize: 14),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: List.generate(
                                pakets.length,
                                (index) => MyPaketCard(
                                      namaBarang: pakets[index].namaBarang,
                                      time: pakets[index].time,
                                      role: pakets[index].role,
                                      edit: false,
                                      namaDormitizen: 'Iksan',
                                    )),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Riwayat Paket :',
                            style: kBoldTextStyle.copyWith(fontSize: 14),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: List.generate(
                                pakets.length,
                                (index) => MyPaketCard(
                                      namaBarang: pakets[index].namaBarang,
                                      time: pakets[index].time,
                                      role: pakets[index].role,
                                      edit: false,
                                      namaDormitizen: 'Iksan',
                                    )),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            MyBottomNav(
                activeIndex: 0,
                onTapPaket: () {},
                onTapProfil: onTapProfil,
                onTapBeranda: onTapBeranda,
                role: Role.dormitizen)
          ],
        ),
      ),
    );
  }
}
