import 'package:flutter/material.dart';

class EventBox extends StatelessWidget {
  final String child;
  const EventBox({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Colors.white,
        ),

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: Text(child,
                style: const TextStyle(
                  height: 1.5,
                ),
                textAlign: TextAlign.center,)),
        ),
      ),
    );
  }
}
