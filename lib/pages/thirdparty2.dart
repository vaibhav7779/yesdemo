import 'package:flutter/material.dart';
import 'package:sar/pages/loanSummary.dart';

import 'document-sign.dart';

class third extends StatefulWidget {
  const third({super.key});

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DocumentSign(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: new Image.asset(
                "assets/hdfcpage.png",
                fit: BoxFit.scaleDown,
                width: 600,
                height: 730,
              ),
            ),
          ),
        ),
      ]),
    ));
  }
}
