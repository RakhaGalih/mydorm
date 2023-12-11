import 'package:flutter/material.dart';
import 'package:mydorm/screens/admin/home/home-admin.dart';

class HomePageAdmin extends StatefulWidget {
  const HomePageAdmin({super.key});

  @override
  State<HomePageAdmin> createState() => _HomePageAdminState();
}

class _HomePageAdminState extends State<HomePageAdmin> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      HomeAdmin(
        onTapPaket: () {
          setState(() {
            _selectedIndex = 0;
          });
        },
        onTapProfil: () {
          setState(() {
            _selectedIndex = 0;
          });
        },
      ),
    ];
    return Scaffold(
      body: pages[_selectedIndex],
    );
  }
}
