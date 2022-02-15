import 'package:flutter/material.dart';
import 'index.dart';
import 'package:project_imk/main.dart';

class HistoryOrder extends StatefulWidget {
  const HistoryOrder({Key? key}) : super(key: key);

  @override
  _HistoryOrderState createState() => _HistoryOrderState();
}

class _HistoryOrderState extends State<HistoryOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawNavbar(context),
      appBar: AppBar(title: const Text('History Order')),
      body: Wrap(
        spacing: 20,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black, width: 1, style: BorderStyle.solid)),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InfoHistory()));
              },
              child: Column(
                children: const [
                  Icon(
                    Icons.drive_eta,
                    size: 40,
                  ),
                  Text(
                    'DK 8302 MD',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black, width: 1, style: BorderStyle.solid)),
            child: InkWell(
              child: Column(
                children: const [
                  Icon(
                    Icons.drive_eta,
                    size: 40,
                  ),
                  Text(
                    'L 9904 UE',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black, width: 1, style: BorderStyle.solid)),
            child: InkWell(
              child: Column(
                children: const [
                  Icon(
                    Icons.drive_eta,
                    size: 40,
                  ),
                  Text(
                    'DK 9588 MQ',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black, width: 1, style: BorderStyle.solid)),
            child: InkWell(
              child: Column(
                children: const [
                  Icon(
                    Icons.drive_eta,
                    size: 40,
                  ),
                  Text(
                    'W 9926 NZ',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
