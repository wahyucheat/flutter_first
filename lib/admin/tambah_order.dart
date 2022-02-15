import 'package:flutter/material.dart';
import 'package:project_imk/admin/index.dart';

class AddOrder extends StatefulWidget {
  const AddOrder({Key? key}) : super(key: key);

  @override
  _AddOrderState createState() => _AddOrderState();
}

class _AddOrderState extends State<AddOrder> {
  String dropdownValue = 'pilih armada';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('add order'),
      ),
      drawer: drawNavbar(context),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              DropdownButton<String>(
                value: dropdownValue,
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>[
                  'pilih armada',
                  'Dk 8302 MD',
                  'L 9904 UE',
                  'DK 9588 MQ',
                  'W 9926 NZ'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Asal'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('tujuan'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Perusahaan/penyewa'),
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}
