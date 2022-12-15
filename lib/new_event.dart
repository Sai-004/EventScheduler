import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget {
  const NewEventScreen({Key? key}) : super(key: key);

  @override
  State<NewEventScreen> createState() => _NewEventScreenState();
}

class _NewEventScreenState extends State<NewEventScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent[100],
      appBar: AppBar(
        title: Text('New Event'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Colors.indigoAccent,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 8.0),
                  child: TextField(
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    controller: _textEditingController,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Event',
                        labelStyle: TextStyle(color: Colors.white),
                        icon: Icon(
                          Icons.event,
                          color: Colors.white,
                        )),
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Builder(builder: (context) {
                return SizedBox(
                  height: 50.0,
                  width: double.infinity,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0)),
                        backgroundColor: Colors.deepPurple
                            .withOpacity(0.25), // Background color
                        foregroundColor:
                            Colors.white, // Text Color (Foreground color)
                      ),
                      onPressed: () {
                        String newEventText = _textEditingController.text;
                        Navigator.of(context).pop(newEventText);
                      },
                      child: const Text('ADD')),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
