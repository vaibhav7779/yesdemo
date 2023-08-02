// import 'package:creditcard/video.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'customerinfo.dart';
// import 'package:sar/pages/common/success.dart';

class Cardimage extends StatefulWidget {
  const Cardimage({super.key});

  @override
  State<Cardimage> createState() => _CardimageState();
}

class _CardimageState extends State<Cardimage> {
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
            const Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(alignment: Alignment.topRight, child: Text("2/4"))
              ],
            ),
            const SizedBox(height: 10),
            const StepProgressIndicator(
              totalSteps: 4,
              currentStep: 2,
              selectedColor: Color(0xff022DDB),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Best Curated offers with a card limit of ₹5,00,000 just for you',
              style: TextStyle(
                fontSize: 27,
              ),
            ),
            const SizedBox(
              height: 27,
            ),
            const Text(
              'Select a card that suit your needs                             ',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 27,
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Custoinfo(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Image.asset(
                    "assets/cardone.png",
                    fit: BoxFit.cover,
                    width: 340,
                    height: 140,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Custoinfo(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Image.asset(
                    "assets/cardtwo.png",
                    fit: BoxFit.cover,
                    width: 340,
                    height: 140,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 80,
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
                  child: const Text("Get this card"),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
