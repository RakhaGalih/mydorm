import 'package:flutter/material.dart';
import 'package:mydorm/components/my_app_bar.dart';
import 'package:mydorm/constants/constant.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar('Notifikasi'),
      body: listView(),
    );
  }

  Widget listView() {
    return ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 20),
        itemBuilder: (context, index) {
          return listViewItem(index);
        },
        separatorBuilder: (context, index) {
          return const Divider(height: 0);
        },
        itemCount: 15);
  }

  Widget listViewItem(int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          prefixIcon(),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  message(index),
                  timeAndDate(index),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget prefixIcon() {
    return Container(
        height: 50,
        width: 50,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.shade300,
        ),
        child: Icon(
          Icons.notifications,
          size: 25,
          color: Colors.grey.shade700,
        ));
  }

  Widget message(int index) {
    double textSize = 14;
    return Container(
      child: RichText(
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
            text: 'Pesan',
            style: TextStyle(
              fontSize: textSize,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            children: const [
              TextSpan(
                text: " Deskripsi pesan",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                ),
              )
            ]),
      ),
    );
  }

  Widget timeAndDate(int index) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('08-12-2023', style: kRegularTextStyle.copyWith(fontSize: 10)),
          Text('07:00 AM', style: kRegularTextStyle.copyWith(fontSize: 10))
        ],
      ),
    );
  }
}
