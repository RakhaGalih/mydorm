import 'package:flutter/material.dart';
import 'package:mydorm/constants/constant.dart';

class PastRequestBox extends StatelessWidget {
  final String name;
  final String type;
  final String time;

  const PastRequestBox({
    super.key,
    required this.name,
    required this.type,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: double.maxFinite,
        height: 80,
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
            const SizedBox(width: 5),
            profile(),
            const SizedBox(width: 5),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(name,
                      textAlign: TextAlign.start,
                      style: kSemiBoldTextStyle.copyWith(
                          color: Colors.black, fontSize: 16)),
                  if (type == "In")
                    (Text("konfirmasi masuk asrama",
                        style: kMediumTextStyle.copyWith(
                            color: Colors.black, fontSize: 14)))
                  else
                    (Text("konfirmasi keluar asrama",
                        style: kMediumTextStyle.copyWith(
                            color: Colors.black, fontSize: 14))),
                  Row(children: [
                    timeicon(),
                    const SizedBox(width: 5),
                    Text(time,
                        style: kMediumTextStyle.copyWith(
                            color: Colors.black45, fontSize: 14))
                  ])
                ]),
            const SizedBox(width: 10),
            edit(),
            const SizedBox(width: 5)
          ],
        ));
  }

  Widget profile() {
    return Container(
        height: 50,
        width: 50,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.shade300,
        ),
        child: Icon(
          Icons.person_2_rounded,
          size: 35,
          color: Colors.grey.shade700,
        ));
  }

  Widget edit() {
    return Container(
        height: 40,
        width: 70,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: kWhite,
          border: Border.all(width: 2.5),
        ),
        child: Row(children: [
          const Icon(
            Icons.edit,
            size: 25,
            color: Colors.black,
          ),
          Text(
            "EDIT",
            style:
                kSemiBoldTextStyle.copyWith(color: Colors.black, fontSize: 15),
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
