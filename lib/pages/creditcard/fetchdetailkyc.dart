import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'compkyc.dart';
// import 'package:sar/pages/common/kyc.dart';

// import '../form2.dart';

enum ProductType { Gold, Silver, Dimond, Blank }

class FetchcKYC extends StatefulWidget {
  const FetchcKYC({super.key});

  @override
  State<FetchcKYC> createState() => _FetchcKYCState();
}

class _FetchcKYCState extends State<FetchcKYC> {
  String? consent;

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
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(alignment: Alignment.topRight, child: Text("3/4"))
                ],
              ),
              const SizedBox(height: 10),
              const StepProgressIndicator(
                totalSteps: 4,
                currentStep: 3,
                selectedColor: Color(0xff022DDB),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(""),
              const SizedBox(
                height: 40,
              ),
              Text(
                'Fetching your details from cKYC',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Hey, before we proceed,lets make sure all the cKYC information correct',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        ' Mr Vikas Raju Tiwari',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Address",
                            style: TextStyle(color: Colors.blue),
                          ),
                          Text(
                            "Pincode",
                            style: TextStyle(color: Colors.blue),
                          ),
                          Text(
                            "",
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'House- 123',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Sector- 10"),
                          Text("400060"),
                          Text(
                            "",
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                      const Text(
                        'Vasant vihar,Andheri',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "City",
                            style: TextStyle(color: Colors.blue),
                          ),
                          Text(
                            "State",
                            style: TextStyle(color: Colors.blue),
                          ),
                          Text(
                            "",
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 11,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Mumbai"),
                          Text("MH"),
                          Text(
                            "",
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        ' is your current address same as that of above address ?',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              maxWidth: 300,
                            ),
                            child: RadioListTile(
                              title: const Text("Yes"),
                              value: "Yes",
                              groupValue: context,
                              onChanged: (value) {
                                setState(() {
                                  var consent = value.toString();
                                });
                              },
                            ),
                          )),
                          Expanded(
                              child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              maxWidth: 300,
                            ),
                            child: RadioListTile(
                              title: const Text("No"),
                              value: "No",
                              groupValue: context,
                              onChanged: (value) {
                                setState(() {
                                  var consent = value.toString();
                                });
                              },
                            ),
                          )),
                        ],
                      ),
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
                          builder: (context) => KYC(),
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
