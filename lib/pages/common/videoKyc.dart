import 'package:flutter/material.dart';
import 'package:sar/pages/common/success.dart';

class VideoKYC extends StatefulWidget {
  const VideoKYC({super.key});

  @override
  State<VideoKYC> createState() => _VideoKYCState();
}

class _VideoKYCState extends State<VideoKYC> {
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
                  builder: (context) => Success(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Image.asset(
                "assets/vkyc.png",
                fit: BoxFit.cover,
                width: 400,
                height: 510,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Success(),
                  ),
                );
              },
              child: const Text("Proceed"),
            ),
          ),
        )
      ]),
    ));
  }
}
