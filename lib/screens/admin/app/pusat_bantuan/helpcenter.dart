import 'package:flutter/material.dart';
import 'package:mydorm/components/features.dart';
import 'package:mydorm/components/my_app_bar.dart';
import 'package:mydorm/constants/constant.dart';
import 'package:mydorm/screens/admin/app/pusat_bantuan/faq/main_faq.dart';
import 'package:mydorm/screens/admin/app/pusat_bantuan/report.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({super.key});

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
              myAppBar('Pusat Bantuan'),
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  color: kGray,
                  padding:
                      const EdgeInsets.symmetric(vertical: 45, horizontal: 30),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.support_agent_rounded,
                        size: 200,
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Features(screen: FAQ(), title: "FAQ"),
                      SizedBox(
                        height: 35,
                      ),
                      Features(screen: Report(), title: "Laporkan Masalah"),
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
