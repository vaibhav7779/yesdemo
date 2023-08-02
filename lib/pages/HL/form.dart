import 'package:flutter/material.dart';
import 'package:sar/pages/HL/kyc.dart';
// import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
// import 'package:sar/pages/add_bank.dart';
// import 'package:sar/pages/employment.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
//import 'package:validation/validation.dart';

import 'form2.dart';

bool isChecked = false;

class CurrentAddress extends StatefulWidget {
  const CurrentAddress({super.key});

  @override
  State<CurrentAddress> createState() => _CurrentAddressState();
}

class _CurrentAddressState extends State<CurrentAddress> {
  bool? check1 = false;
  bool? check2 = false;
  bool _value = false;
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
                "Add Current address",
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
                      TextFormField(
                        autofocus: false,
                        initialValue: "123/10, Laxmi Niwas",
                        decoration: const InputDecoration(
                          labelText: "Address line 1",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFF5F5F5),
                        ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "Opp,Green Park Post Office,Green Park",
                        decoration: const InputDecoration(
                          labelText: "Address line 1",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFF5F5F5),
                        ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "110001",
                        decoration: const InputDecoration(
                          labelText: "Pincode",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFF5F5F5),
                        ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "Delhi",
                        decoration: const InputDecoration(
                          labelText: "City",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFF5F5F5),
                        ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "Delhi",
                        decoration: const InputDecoration(
                          labelText: "State",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFF5F5F5),
                        ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Checkbox(
                            value: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value!;
                              });
                            },
                          ),
                          const SizedBox(width: 20),
                          const Text(
                            "I accept and agree all details furnished by me are correct",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
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
                  onPressed: _value == true
                      ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => KYC_HL(),
                            ),
                          );
                        }
                      : null,
                  child: const Text('continue'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
