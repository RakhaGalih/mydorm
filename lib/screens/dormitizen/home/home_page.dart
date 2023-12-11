import 'package:flutter/material.dart';
import 'package:mydorm/screens/dormitizen/home/home-dormitizen.dart';
import 'package:mydorm/screens/dormitizen/home/paket.dart';

class HomePageDormitizen extends StatefulWidget {
  const HomePageDormitizen({super.key});

  @override
  State<HomePageDormitizen> createState() => _HomePageDormitizenState();
}

class _HomePageDormitizenState extends State<HomePageDormitizen> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      PaketDormitizen(
        onTapBeranda: () {
          setState(() {
            _selectedIndex = 1;
          });
        },
        onTapProfil: () {
          setState(() {
            _selectedIndex = 1;
          });
        },
      ),
      Home(
        onTapPaket: () {
          setState(() {
            _selectedIndex = 0;
          });
        },
        onTapProfil: () {
          setState(() {
            _selectedIndex = 1;
          });
        },
      ),
    ];
    return Scaffold(
      body: pages[_selectedIndex],
    );
  }
}
