import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sar/pages/approval.dart';
import 'package:sar/pages/loan-disbursed.dart';

class Loading extends StatefulWidget {
  final String nextPage;
  const Loading({super.key, required this.nextPage});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              widget.nextPage == 'approval' ? Approval() : LoanDisbursed(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Loan"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: const <Widget>[
          Icon(Icons.question_mark_rounded),
          SizedBox(width: 15)
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: SizedBox(
                  height: 368,
                  width: 320,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/loader.gif",
                        height: 120,
                        width: 120,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Please wait...",
                        style: TextStyle(
                            color: Color(0xffE97A2A),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        "while we are generating the best",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      const Text("offer for you",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
