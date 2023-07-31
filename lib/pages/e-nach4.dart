import 'package:flutter/material.dart';
import 'package:sar/pages/loading.dart';
// import 'package:sar/pages/loanSummary.dart';

// import 'approval.dart';

class Fourenach extends StatefulWidget {
  const Fourenach({super.key});

  @override
  State<Fourenach> createState() => _ThirdPartState();
}

class _ThirdPartState extends State<Fourenach> {
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
                  builder: (context) => Loading(nextPage: 'approval'),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                "assets/bankk.png",
                fit: BoxFit.cover,
                width: 400,
                height: 740,
              ),
            ),
          ),
        ),
      ]),
    ));
  }
}
