import 'package:flutter/material.dart';

class InfoHistory extends StatelessWidget {
  const InfoHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail history'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      width: 2, color: Colors.black, style: BorderStyle.solid),
                ),
              ),
              margin: EdgeInsets.only(bottom: 30),
              child: Column(
                children: const [
                  Icon(
                    Icons.drive_eta,
                    size: 80,
                  ),
                  Text(
                    'DK 8504 MG',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    'tanggal',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'asal',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'tujuan',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'muatan',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    '03/01/2022',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Mojokerto',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue),
                  ),
                  Text(
                    'Karawang',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.green),
                  ),
                  Text(
                    'Ajinomoto',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.red),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    '04/01/2022',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Karawang',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue),
                  ),
                  Text(
                    'Mojokerto',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.green),
                  ),
                  Text(
                    'Ajinomoto',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.red),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
