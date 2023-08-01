import 'package:flutter/material.dart';

import 'form2.dart';

class aceess extends StatefulWidget {
  const aceess({super.key});

  @override
  State<aceess> createState() => _ThirdPartState();
}

class _ThirdPartState extends State<aceess> {
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
                  builder: (context) => BasicForm(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                "assets/vkyc.png",
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
