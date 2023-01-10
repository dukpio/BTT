import 'package:flutter/material.dart';
import './record.dart';

class ListofRecords extends StatelessWidget {
  final List<Record> records = [
    Record(
      amount: 25.99,
      date: DateTime(2022, 9, 7),
      nameofTransaction: 'Taxi to the Airport',
    ),
    Record(
      amount: 89.99,
      date: DateTime(2022, 9, 5),
      nameofTransaction: 'Airplane ticket',
    )
  ];

  ListofRecords(records);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('Taxi to the Airport'),
        ),
        ListTile(title: Text('Airplane ticket')),
      ],
    );
  }
}
