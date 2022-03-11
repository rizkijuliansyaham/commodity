import 'dart:math';

import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Text(
              'Aplikasi Ini Merupakan Tugas Final Task salah satu peserta dari bootcamp "Mobile App Dev using Flutter & Darts" yang diadakan oleh SKODI (Sekolah Koding Indonesia). \n\nDengan ini creator app ini mengucapkan terima kasih sebanyak-banyaknya kepada pihak SKODI serta kakak-kakak mentor karena telah membimbing dan memberikan kesempatan untuk mengikuti bootcamp ini. \n\n😊\n\nMohon Doanya supaya senantiasa semangat dalam belajar.\n\nSUKSES SELALU SKODI\n\n\n\nqj_am\n(19 Januari 2022)'),
        ),
      ),
    );
  }
}
