import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MidtermExam(),
    );
  }
}

class MidtermExam extends StatefulWidget {
  @override
  _MidtermExamState createState() => _MidtermExamState();
}

class _MidtermExamState extends State<MidtermExam> {
  final List<String> items = [
    'Jhones',
    'Jhon',
    'Sen',
    'Ellis',
    'Lian',
    'Ian',
    'Dan',
    'Sedric',
    'Charles',
    'Victor'
  ];

  final List<bool> added = List.generate(10, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rassille_MidtermExam'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Card(
                  color: added[index] ? const Color.fromARGB(255, 18, 224, 231) : Colors.white,
                  child: ListTile(
                    title: Text(items[index]),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            print('${items[index]} details');
                          },
                          child: Text('Details'),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              added[index] = true;
                            });
                          },
                          child: Text(added[index] ? 'Added' : 'Add'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
