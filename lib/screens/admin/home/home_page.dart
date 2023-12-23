import 'package:flutter/material.dart';
import 'package:mydorm/components/bottom_nav.dart';
import 'package:mydorm/constants/constant.dart';
import 'package:mydorm/screens/admin/history/pengumuman_page.dart';
import 'package:mydorm/screens/admin/home/home-admin.dart';
import 'package:mydorm/screens/dormitizen/notification.dart';

class HomePageAdmin extends StatefulWidget {
  const HomePageAdmin({super.key});

  @override
  State<HomePageAdmin> createState() => _HomePageAdminState();
}

class _HomePageAdminState extends State<HomePageAdmin> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const NotificationView(),
      const HomeAdmin(),
      const PengumumanPage()
    ];
    return Scaffold(
      body: Stack(
        children: [
          pages[_selectedIndex],
          MyBottomNav(
              activeIndex: _selectedIndex,
              onTapPaket: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
              onTapBeranda: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
              onTapProfil: () {
                setState(() {
                  _selectedIndex = 2;
                });
              },
              role: Role.admin)
        ],
      ),
    );
  }
}
