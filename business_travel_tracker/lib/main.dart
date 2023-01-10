import 'package:flutter/material.dart';
import 'chart.dart';
import 'list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Business Travel Tracker',
      theme: ThemeData(
          backgroundColor: Color.fromARGB(255, 195, 231, 228),
          primarySwatch: Colors.blueGrey,
          fontFamily: 'Dolgan',
          appBarTheme: AppBarTheme(centerTitle: true)),
      home: const MyHomePage(title: 'Business Travel Tracker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 75,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 1,
                child: TextField(
                  decoration: InputDecoration(labelText: 'Project name'),
                  controller: null,
                  onSubmitted: null,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(labelText: 'Project budget'),
                  controller: null,
                  onSubmitted: null,
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          Chart(),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Card(
              child: ListView(children: [
                Container(
                  height: 50,
                  color: Theme.of(context).colorScheme.background,
                  child: const Center(
                      child: Text(
                    'Taxi to the Airport',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  )),
                ),
                Container(
                  height: 50,
                  color: Theme.of(context).colorScheme.background,
                  child: const Center(
                      child: Text(
                    'Airplane ticket',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  )),
                ),
                Container(
                  height: 50,
                  color: Theme.of(context).colorScheme.background,
                  child: const Center(
                    child: Text(
                      'Dinner at the Airport',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              ]),
            ),
          ),
          SizedBox(
            width: 75,
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: null,
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
