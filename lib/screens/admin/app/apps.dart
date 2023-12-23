import 'package:flutter/material.dart';
import 'package:mydorm/components/features.dart';
import 'package:mydorm/components/my_app_bar.dart';
import 'package:mydorm/constants/constant.dart';
import 'package:mydorm/screens/admin/add/add_info/form.dart';
import 'package:mydorm/screens/admin/add/add_paket/form.dart';
import 'package:mydorm/screens/admin/app/pusat_bantuan/helpcenter.dart';
import 'package:mydorm/screens/admin/app/slicing_view/slicingview.dart';
import 'package:mydorm/screens/admin/app/statistik/notAvailable.dart';
import 'package:mydorm/screens/admin/log/change_log/form.dart';
import 'package:mydorm/screens/admin/log/logmanual/form.dart';

class Apps extends StatelessWidget {
  const Apps({super.key});

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
              myAppBar("Apps"),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  color: kGray,
                  padding:
                      const EdgeInsets.symmetric(vertical: 45, horizontal: 30),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Features(screen: LogManual(), title: "LogManual"),
                      Features(screen: ChangeLog(), title: "Edit Log"),
                      Features(screen: AddPaket(), title: "Paket"),
                      Features(
                          screen: AddInformation(), title: "Informasi Penting"),
                      Features(screen: NotAvailable(), title: "Statistik"),
                      Features(screen: HelpCenter(), title: "Pusat Bantuan"),
                      Features(screen: SlicingView(), title: "Tes slicing"),
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
