import 'package:flutter/material.dart';
import 'package:mydorm/constants/constant.dart';

AppBar myAppBar(String title) {
  return AppBar(
    foregroundColor: Colors.black,
    titleTextStyle:
        kSemiBoldTextStyle.copyWith(fontSize: 16, color: Colors.black),
    backgroundColor: kWhite,
    title: Text(title),
  );
}
