// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:mydorm/constants/constant.dart';

class AppsIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget pushWidget;
  const AppsIcon({
    Key? key,
    required this.icon,
    required this.title,
    required this.pushWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => pushWidget));
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20, right: 5, left: 5),
          child: Container(
            height: 60,
            constraints: const BoxConstraints(minHeight: 60, minWidth: 80),
            child: Column(
              children: [
                Icon(
                  icon,
                  size: 30,
                  color: kMain,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  title,
                  style: kSemiBoldTextStyle.copyWith(fontSize: 12),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
