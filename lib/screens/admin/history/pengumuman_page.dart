import 'package:flutter/material.dart';
import 'package:mydorm/components/my_app_bar.dart';
import 'package:mydorm/components/pengumuman_card.dart';
import 'package:mydorm/components/search_box.dart';
import 'package:mydorm/constants/constant.dart';
import 'package:mydorm/screens/admin/add/add_info/form.dart';
import 'package:mydorm/templates/pengumuman.dart';

class PengumumanPage extends StatelessWidget {
  const PengumumanPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Pengumuman> pengumumans = [
      Pengumuman('Pengurasan Air', '11 November 2023', kGradientBlue),
      Pengumuman('Welcoming Party', '12 Desember 2023', kGradientGreen),
      Pengumuman('Meet', '26 Desember 2023', kGradientOrange),
    ];
    return Scaffold(
      appBar: myAppBar('Informasi'),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
        child: Column(
          children: [
            const MySearchBox(),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          pengumumans.length,
                          (index) => Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: PengumuanCard(
                                    gradient: pengumumans[index].gradient,
                                    title: pengumumans[index].title,
                                    tanggal: pengumumans[index].tanggal),
                              )),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddInformation()));
                      },
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                            gradient: kGradientRed,
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
                              'Tambahkan Informasi',
                              style: kBoldTextStyle.copyWith(
                                  color: kWhite, fontSize: 20),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Icon(
                              Icons.add_circle_outline,
                              size: 40,
                              color: kWhite,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
