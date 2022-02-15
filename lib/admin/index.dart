import 'package:flutter/material.dart';
import 'package:project_imk/admin/tambah_order.dart';
import 'package:project_imk/main.dart';
export 'dashboard.dart';
export 'history.dart';
import 'index.dart';
export 'info_history.dart';

Widget profile(String nama, String role) {
  return SizedBox(
    height: 130,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      color: Colors.blue[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.white,
            ),
            child: const Icon(
              Icons.person,
              size: 60,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(nama),
              Text(
                role,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

SafeArea drawNavbar(BuildContext context) {
  return SafeArea(
    child: Drawer(
      backgroundColor: Colors.grey,
      child: ListView(
        children: [
          profile('Wahyu Dwi Kurniawan', 'Super Admin'),
          SizedBox(
            height: 60,
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AddOrder()));
              },
              child: Card(
                color: Colors.grey[300],
                child: Row(
                  children: const [
                    Icon(
                      Icons.arrow_right,
                      size: 25,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'add delivery order',
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MainMenu()));
              },
              child: Card(
                color: Colors.grey[300],
                child: Row(
                  children: const [
                    Icon(
                      Icons.arrow_right,
                      size: 25,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Cek Status',
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HistoryOrder()));
              },
              child: Card(
                color: Colors.grey[300],
                child: Row(
                  children: const [
                    Icon(
                      Icons.arrow_right,
                      size: 25,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'History',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
