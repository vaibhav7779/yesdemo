import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import 'package:sar/global.dart' as globals;
import 'package:sar/pages/PayLater/adharConfirmation.dart';

class PreApprovedOfferPayLater extends StatefulWidget {
  const PreApprovedOfferPayLater({super.key});

  @override
  State<PreApprovedOfferPayLater> createState() =>
      _PreApprovedOfferPayLaterState();
}

class _PreApprovedOfferPayLaterState extends State<PreApprovedOfferPayLater> {
  var format = intl.NumberFormat.currency(
    locale: 'en_IN',
    decimalDigits: 0, // change it to get decimal places
    symbol: '₹ ',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pay Later"),
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
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text("Hello Sakshi, you are just a few steps away"),
              const SizedBox(
                height: 20,
              ),
              const Text("Progress bar"),
              const SizedBox(
                height: 20,
              ),
              
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(
                        child: Image.asset('assets/success.gif'),
                      ),
                      const Text(
                        'Congratulations',
                        style: TextStyle(
                          color: Color(0xff0025BA),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'You have been approved for a pay later of',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 10),
                      ShaderMask(
                        shaderCallback: (bounds) => const LinearGradient(
                          colors: [Color(0xff022DDB), Color(0xff0026Bf)],
                        ).createShader(bounds),
                        child: Text(
                          format.format(globals.amount),
                          style: TextStyle(
                            fontSize: 34.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CustomerConfirmationPayLater(),
                        ),
                      );
                    },
                    child: const Text("Proceed"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
