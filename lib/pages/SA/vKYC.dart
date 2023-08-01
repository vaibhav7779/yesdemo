import 'package:flutter/material.dart';
import 'package:sar/pages/HL/successHL.dart';
import 'package:sar/pages/SA/success_sa.dart';

class VideoKYC_SA extends StatefulWidget {
  const VideoKYC_SA({super.key});

  @override
  State<VideoKYC_SA> createState() => _VideoKYC_SAState();
}

class _VideoKYC_SAState extends State<VideoKYC_SA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Savings Account"),
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
                  onTap: () {},
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
                          builder: (context) => SuccessSA(),
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
