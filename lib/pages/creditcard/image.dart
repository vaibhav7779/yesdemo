// import 'package:creditcard/video.dart';
import 'package:flutter/material.dart';

import 'customerinfo.dart';
// import 'package:sar/pages/common/success.dart';

class VideoKYC extends StatefulWidget {
  const VideoKYC({super.key});

  @override
  State<VideoKYC> createState() => _VideoKYCState();
}

class _VideoKYCState extends State<VideoKYC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Credit Card"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: const <Widget>[
            // Icon(Icons.question_mark_rounded),
            SizedBox(width: 15)
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoKYC(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset(
                      "assets/vkyc.png",
                      fit: BoxFit.cover,
                      width: 340,
                      height: 500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoKYC(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset(
                      "assets/cardtwo.png",
                      fit: BoxFit.cover,
                      width: 340,
                      height: 500,
                    ),
                  ),
                ),
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
                          builder: (context) => Custoinfo(),
                        ),
                      );
                    },
                    child: const Text("Proceed"),
                  ),
                ),
              )
            ]),
          ),
        ));
  }
}
