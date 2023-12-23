import 'package:flutter/material.dart';
import 'package:mydorm/components/boxform.dart';
import 'package:mydorm/components/my_app_bar.dart';
import 'package:mydorm/constants/constant.dart';
import 'package:mydorm/templates/sukses.dart';

class Report extends StatelessWidget {
  const Report({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: width,
          height: height,
          child: Column(
            children: [
              myAppBar('Laporan'),
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  color: kGray,
                  padding:
                      const EdgeInsets.symmetric(vertical: 45, horizontal: 30),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.report,
                        size: 200,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const BoxForm(
                        title: "Judul",
                        guideText: "Masukkan Judul",
                        desc: false,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const BoxForm(
                          title: "Deskripsi",
                          guideText: "Jelaskan permasalahan..",
                          desc: true),
                      const SizedBox(
                        height: 70,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SuccessScreen(
                                      title: "Pusat Bantuan",
                                      desc: "Berhasi melaporkan!")));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: double.maxFinite,
                          height: 64,
                          decoration: BoxDecoration(
                              color: const Color(0xFFB22D30),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            'KIRIM',
                            style: kSemiBoldTextStyle.copyWith(
                                color: kWhite, fontSize: 16),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
