import 'package:flutter/material.dart';
import 'package:mydorm/components/my_app_bar.dart';
import 'package:mydorm/constants/constant.dart';

class InfoFAQ extends StatelessWidget {
  final String textinfo;
  final String question;

  const InfoFAQ({super.key, required this.textinfo, required this.question});

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
              myAppBar('FAQ'),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  color: kGray,
                  padding:
                      const EdgeInsets.symmetric(vertical: 45, horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Pertanyaan yang sering diajukan",
                          style: kBoldTextStyle.copyWith(
                              color: Colors.black, fontSize: 15)),
                      const SizedBox(height: 45),
                      Text(question,
                          style: kBoldTextStyle.copyWith(
                              color: Colors.black, fontSize: 15)),
                      const SizedBox(height: 15),
                      textBox(),
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

  Widget textBox() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
              color: Colors.black45,
              offset: Offset(5.00, 5.00),
              blurRadius: 8.00)
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: 15),
          Expanded(
            child: Text(textinfo,
                textAlign: TextAlign.justify,
                style: kSemiBoldTextStyle.copyWith(
                    color: Colors.black, fontSize: 16)),
          ),
          const SizedBox(width: 15),
        ],
      ),
    );
  }
}
