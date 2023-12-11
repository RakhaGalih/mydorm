import 'package:flutter/material.dart';
import 'package:mydorm/screens/admin/home/home_page.dart';
import 'package:mydorm/screens/dormitizen/home/home_page.dart';

import '../../constants/constant.dart';

class Login extends StatefulWidget {
  final Role role;
  const Login({super.key, required this.role});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: width,
          height: height,
          child: Column(
            children: [
              SizedBox(
                height: 200,
                child: Stack(children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 30),
                    decoration: const BoxDecoration(gradient: kGradientMain),
                    child: SafeArea(
                        child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.chevron_left,
                        size: 35,
                        color: kWhite,
                      ),
                    )),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset('images/bg-asrama-wide.png',
                        width: width, fit: BoxFit.cover),
                  ),
                ]),
              ),
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  color: kWhite,
                  padding:
                      const EdgeInsets.symmetric(vertical: 45, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'images/dorm-logo-bg-remove.png',
                        width: 80,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Login',
                        style: kBoldTextStyle.copyWith(fontSize: 30),
                      ),
                      const SizedBox(
                        height: 55,
                      ),
                      const TextField(
                        decoration: InputDecoration(label: Text("Username")),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                            label: const Text("Password"),
                            suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                },
                                child: Icon((_isObscure)
                                    ? Icons.visibility
                                    : Icons.visibility_off))),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      (widget.role == Role.dormitizen)
                                          ? const HomePageDormitizen()
                                          : const HomePageAdmin()));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: double.maxFinite,
                          height: 64,
                          decoration: BoxDecoration(
                              gradient: kGradientMain,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            'Login',
                            style: kSemiBoldTextStyle.copyWith(
                                color: kWhite, fontSize: 16),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
