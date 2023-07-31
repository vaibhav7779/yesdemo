import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  bool? check1 = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(),
    );
  }
}
