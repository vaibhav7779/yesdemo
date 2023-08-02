import 'package:flutter/material.dart';
import 'package:sar/pages/HL/form.dart';
import 'package:sar/pages/HL/kyc.dart';

// import 'form.dart';
// import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
// import 'package:sar/pages/add_bank.dart';
// import 'package:sar/pages/employment.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

bool isChecked = false;

class PermanentAddress extends StatefulWidget {
  const PermanentAddress({super.key});

  @override
  State<PermanentAddress> createState() => _PermanentAddressState();
}

class _PermanentAddressState extends State<PermanentAddress> {
  bool? check1 = false;
  bool? check2 = false;
  String? consent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Loan"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: <Widget>[
          Icon(Icons.question_mark_rounded),
          SizedBox(width: 15)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // BreadCrumb(
              //   items: <BreadCrumbItem>[
              //     BreadCrumbItem(
              //       content: const Text(
              //         "HOME",
              //         style:
              //             TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              //       ),
              //     ),
              //     BreadCrumbItem(
              //       content: const Text(
              //         "PERSONAL LOANS",
              //         style:
              //             TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              //       ),
              //     ),
              //     BreadCrumbItem(
              //       content: const Text(
              //         "APPLY",
              //         style:
              //             TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              //       ),
              //     ),
              //   ],

              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(" "), Text("3/4")],
              ),
              const SizedBox(height: 10),
              const StepProgressIndicator(
                totalSteps: 4,
                currentStep: 3,
                selectedColor: Color(0xff022DDB),
              ),

              const SizedBox(height: 24),
              const Text(
                "Fetching details from Adhaar",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 20),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 20),
                      const Text(
                        "We have fetch bellow deails from out records",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 25),
                      TextFormField(
                        autofocus: false,
                        initialValue: "Amit kumar",
                        decoration: const InputDecoration(
                          labelText: "Name",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFF5F5F5),
                        ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "AAAAAOOOOA",
                        decoration: const InputDecoration(
                          labelText: "Pan",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFF5F5F5),
                        ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "Rita Ramesh",
                        decoration: const InputDecoration(
                          labelText: "Mother Name",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFF5F5F5),
                        ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "Ramesh kumar",
                        decoration: const InputDecoration(
                          labelText: "Father Name",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFF5F5F5),
                        ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "123/10,Green park,Delhi-110001",
                        decoration: const InputDecoration(
                          labelText: "Address",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFF5F5F5),
                        ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),
              const Text(
                "Current address Confirmation",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),

              const SizedBox(height: 20),

//yes no code

              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                          "Is your current address same as that of above address?"),
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
                                groupValue: consent,
                                onChanged: null,
                              ),
                            ),
                          ),
                          Expanded(
                              child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              maxWidth: 300,
                            ),
                            child: RadioListTile(
                              title: const Text("No"),
                              value: "No",
                              groupValue: consent,
                              onChanged: (value) {
                                setState(() {
                                  consent = value.toString();
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
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CurrentAddress(),
                      ),
                    );
                  },
                  child: const Text("Proceed"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
