import 'package:flutter/material.dart';

const kGradientMain =
    LinearGradient(begin: Alignment(-1, -0.2), end: Alignment(1, 0.2), colors: [
  Color(0xFFCC3545),
  Color(0xFF994F56),
  Color(0xFF686767),
]);

const kGradientGreen = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFA1F2B8),
      Color(0xFF36C06E),
      Color(0xFF1D3F83),
    ]);
const kGradientBlue = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFA1D5F2),
      Color(0xFF366EC0),
      Color(0xFF6E1D83),
    ]);
const kGradientOrange = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFEFAB02),
      Color(0xFFF5911F),
      Color(0xFFFF5E0C),
    ]);

const kRegularTextStyle = TextStyle(fontWeight: FontWeight.w400);
const kMediumTextStyle = TextStyle(fontWeight: FontWeight.w500);
const kSemiBoldTextStyle = TextStyle(fontWeight: FontWeight.w600, fontSize: 22);
const kBoldTextStyle = TextStyle(fontWeight: FontWeight.w700);

const kWhite = Color(0xFFFEFEFF);
const kRed = Color(0xFF994F56);
const kReddish = Color(0xFFEDD8D8);

BoxShadow basicDropShadow = BoxShadow(
    color: Colors.black.withOpacity(0.25),
    offset: const Offset(0, 4),
    blurRadius: 4);
