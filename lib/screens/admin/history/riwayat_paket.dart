import 'package:flutter/material.dart';
import 'package:mydorm/components/my_app_bar.dart';
import 'package:mydorm/components/paket_card.dart';
import 'package:mydorm/components/search_box.dart';
import 'package:mydorm/constants/constant.dart';
import 'package:mydorm/templates/paket.dart';

class HistoryPaket extends StatelessWidget {
  const HistoryPaket({super.key});

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
    return Scaffold(
      appBar: myAppBar('Riwayat Paket'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          children: [
            const MySearchBox(),
            const SizedBox(
              height: 20,
            ),
            Column(
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
                            edit: true,
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
                            edit: true,
                            namaDormitizen: 'Iksan',
                          )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
