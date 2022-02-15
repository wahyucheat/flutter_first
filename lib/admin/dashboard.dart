// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:project_imk/admin/history.dart';
import 'package:project_imk/main.dart';
import 'index.dart';

// import 'package:project_imk/admin/index.dart';

Widget daftarKendaraan(
    String plat, String posisi, String status, String waktuBerkendara) {
  final warna;
  if (status == 'pengiriman') {
    warna = Colors.blue;
  } else if (status == 'perbaikan') {
    warna = Colors.red;
  } else {
    warna = Colors.black;
  }

  const center = MainAxisAlignment.center;
  return SizedBox(
    height: 80,
    child: Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: center,
            children: [
              Icon(
                Icons.drive_eta,
                color: warna,
                size: 40,
              ),
              Text(
                plat,
                style: TextStyle(
                    color: warna, fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: center,
            children: [
              Text('status : $status'),
              Text(posisi),
              Text('driving : $waktuBerkendara')
            ],
          ),
        ],
      ),
    ),
  );
}

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawNavbar(context),
      appBar: AppBar(
        title: const Text('Status'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.power_settings_new_sharp))
        ],
      ),
      body: ListView(
        children: <Widget>[
          daftarKendaraan(
              'DK 8302 MD',
              'cangkring malang, pasuruan, jawa timur',
              'perbaikan',
              '1 jam 5 menit'),
        ],
      ),
    );
  }
}
