import 'package:flutter/material.dart';
import 'package:mydorm/components/my_app_bar.dart';
import 'package:mydorm/constants/constant.dart';

class NotAvailable extends StatelessWidget {
  const NotAvailable({super.key});

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
              myAppBar("Statistik"),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  color: kGray,
                  padding:
                      const EdgeInsets.symmetric(vertical: 45, horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.sentiment_dissatisfied_rounded,
                            size: 200,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Mohon maaf fitur ini belum tersedia",
                            style: kBoldTextStyle.copyWith(fontSize: 15),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: double.maxFinite,
                          height: 64,
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
                          child: Text('Kembali',
                              style: kSemiBoldTextStyle.copyWith(
                                  color: Colors.black, fontSize: 16)),
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
