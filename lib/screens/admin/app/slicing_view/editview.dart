import 'package:flutter/material.dart';
import 'package:mydorm/components/my_app_bar.dart';
import 'package:mydorm/components/past_request.dart';
import 'package:mydorm/components/search_box.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar('Riwayat'),
        body: const Padding(
          padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
          child: Column(children: [
            MySearchBox(),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                  child: Column(children: [
                PastRequestBox(
                    name: "Iksan Oktav Risandy",
                    type: "In",
                    time: "15 Desember 2023 - 18:00"),
                SizedBox(
                  height: 15,
                ),
                PastRequestBox(
                    name: "Dias Adani",
                    type: "Out",
                    time: "15 Desember 2023 - 18:00"),
                SizedBox(
                  height: 15,
                ),
                PastRequestBox(
                    name: "Abdillah Aufa",
                    type: "In",
                    time: "15 Desember 2023 - 18:00")
              ])),
            )
          ]),
        ));
  }
}
