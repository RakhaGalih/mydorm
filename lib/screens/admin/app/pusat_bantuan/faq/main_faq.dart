import 'package:flutter/material.dart';
import 'package:mydorm/components/features.dart';
import 'package:mydorm/components/my_app_bar.dart';
import 'package:mydorm/constants/constant.dart';
import 'package:mydorm/templates/infofaq.dart';

class FAQ extends StatelessWidget {
  const FAQ({super.key});

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
                      Text("MyDorm",
                          style: kBoldTextStyle.copyWith(
                              color: Colors.black, fontSize: 15)),
                      const SizedBox(height: 15),
                      const Features(
                          screen: InfoFAQ(
                              question: "Apa itu MyDorm?",
                              textinfo:
                                  "MyDorm merupakan inovasi yang di desain khusus untuk pengguna yang tinggal di asrama Telkom University. MyDorm merupakan penerapan solusi untuk memecahkan permasalahan utama yang dihadapi oleh penghuni asrama, yaitu masalah pencatatan keluar-masuk asrama dan manajemen kiriman paket. Dengan hadirnya aplikasi MyDorm, penghuni asrama dapat dengan mudah melacak keluar-masuk dengan lebih efisien dan akurat. Melalui aplikasi ini juga dapat dengan mudah mengetahui kiriman paket yang telah sampai dan dititipkan pada helpdesk."),
                          title: "Apa itu MyDorm?"),
                      const SizedBox(height: 15),
                      Text("Paket",
                          style: kBoldTextStyle.copyWith(
                              color: Colors.black, fontSize: 15)),
                      const SizedBox(height: 15),
                      const Features(
                          screen: InfoFAQ(
                              question: "Cara mengetahui adanya paket?",
                              textinfo:
                                  "Aplikasi MyDorm memiliki fitur notifikasi yang dapat menginformasikan kepada pengguna apabila terdapat informasi penting yang perlu disampaikan, termasuk salah satunya paket yang datang. Paket yang datang akan ditangani langsung oleh Helpdesk maupun Senior Resident dan akan dikabarkan kepada pemilik paket melalui notifikasi."),
                          title: "Cara mengetahui adanya paket?"),
                      const SizedBox(height: 15),
                      Text("Keluar/Masuk",
                          style: kBoldTextStyle.copyWith(
                              color: Colors.black, fontSize: 15)),
                      const SizedBox(height: 15),
                      const Features(
                          screen: InfoFAQ(
                              question: "Cara konfirmasi keluar/masuk?",
                              textinfo:
                                  "1. Pergi ke halaman beranda \n2. Pilih opsi bertulisan 'Masuk/Keluar' \n3. Klik Opsi 'Masuk/Keluar' dan anda sudah berhasil konfirmasi masuk/keluar"),
                          title: "Cara konfirmasi keluar/masuk?"),
                      const SizedBox(height: 15),
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
