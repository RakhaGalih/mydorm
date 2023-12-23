import 'package:flutter/material.dart';
import 'package:mydorm/components/features.dart';
import 'package:mydorm/components/my_app_bar.dart';
import 'package:mydorm/constants/constant.dart';
import 'package:mydorm/screens/admin/app/slicing_view/editview.dart';
import 'package:mydorm/screens/admin/app/slicing_view/requestview.dart';
import 'package:mydorm/screens/admin/app/slicing_view/statisticview.dart';

class SlicingView extends StatelessWidget {
  const SlicingView({super.key});

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
              myAppBar('Slicing View'),
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
                      Features(screen: RequestView(), title: "Request view"),
                      Features(screen: EditView(), title: "Edit View"),
                      Features(screen: StatisticView(), title: "Statistic View")
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
