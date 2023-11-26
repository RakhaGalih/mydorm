import 'package:flutter/material.dart';
import 'package:mydorm/screens/dormitizen/home/home-dormitizen.dart';

import '../../constants/constant.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                    decoration: const BoxDecoration(gradient: kGradientMain),
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
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            label: Text("Password"),
                            suffixIcon: Icon(Icons.visibility)),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home()));
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
