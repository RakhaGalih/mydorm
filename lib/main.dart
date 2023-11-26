import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mydorm/screens/auth/pilih_role.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
        theme: ThemeData(fontFamily: "Sans", primarySwatch: Colors.red),
        home: const PIlihRole());
  }
}
