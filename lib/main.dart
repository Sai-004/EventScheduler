import 'package:event_scheduler/event_box.dart';
import 'package:event_scheduler/new_event.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Widget> _list =[

  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.indigo
      ),
      home: Scaffold(
        backgroundColor: Colors.indigoAccent[100],
        appBar: AppBar(
            title: const Text('Event Scheduler')
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
          child: ListView.builder(
              itemCount: _list.length,
              itemBuilder: ((context,index) => _list[index])),
        ),

        floatingActionButton: Builder(
            builder: (context) {
              return FloatingActionButton(
                onPressed: () async {
                  String newText = await Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NewEventScreen()));
                  setState(() {
                    _list.add(EventBox(child: newText));

                  });
                },
                child: const Icon(Icons.add),
              );
            }
        ),
      ),
    );
  }
}
