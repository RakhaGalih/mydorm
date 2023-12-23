import 'package:flutter/material.dart';
import 'package:mydorm/constants/constant.dart';

class StatisticBox extends StatelessWidget {
  final String time;

  const StatisticBox({
    super.key,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: double.maxFinite,
        height: 70,
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: Colors.black45,
                offset: Offset(5.00, 5.00),
                blurRadius: 8.00)
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            document(),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("STATISTIK KELUAR/MASUK ASRAMA",
                      textAlign: TextAlign.start,
                      style: kBoldTextStyle.copyWith(
                          color: Colors.black, fontSize: 10)),
                  Row(children: [
                    timeicon(),
                    const SizedBox(width: 5),
                    Text(time,
                        style: kMediumTextStyle.copyWith(
                            color: Colors.black45, fontSize: 14))
                  ])
                ]),
            download(),
          ],
        ));
  }

  Widget document() {
    return Icon(
      Icons.file_present_rounded,
      size: 50,
      color: Colors.grey.shade700,
    );
  }

  Widget download() {
    return Container(
        height: 40,
        width: 80,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: kWhite,
          border: Border.all(width: 2.5),
        ),
        child: Row(children: [
          const Icon(
            Icons.download,
            size: 25,
            color: Colors.black,
          ),
          Text(
            "UNDUH",
            style: kBoldTextStyle.copyWith(
              color: Colors.black,
              fontSize: 10,
            ),
          )
        ]));
  }

  Widget timeicon() {
    return const Icon(
      Icons.access_time_filled_rounded,
      size: 14,
      color: Colors.black45,
    );
  }
}
