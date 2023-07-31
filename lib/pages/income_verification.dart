import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
import 'package:sar/pages/approval.dart';
import 'package:sar/pages/loanSummary.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'e-nach.dart';
import 'loan-disbursed.dart';

bool isChecked = true;

class IncomeVerification extends StatefulWidget {
  const IncomeVerification({super.key});

  @override
  State<IncomeVerification> createState() => _IncomeVerificationState();
}

class _IncomeVerificationState extends State<IncomeVerification> {
  String? consent;

  bool? check1 = false;
  bool? check2 = false;
  bool? check3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Loan"),
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
              //   divider: const Icon(Icons.chevron_right),
              // ),

              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [Text("Income Verification"), Text("5/11")],
              ),
              const SizedBox(height: 10),
              const StepProgressIndicator(
                totalSteps: 11,
                currentStep: 5,
                selectedColor: Color(0xFF45C00B),
              ),
              const SizedBox(height: 24),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    children: [
                      ListTile(
                        title: const Text(
                          'Account Aggregator',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        leading: Radio(
                          value: "Account Aggregator",
                          groupValue: consent,
                          onChanged: (value) {
                            setState(() {
                              consent = value.toString();
                            });
                          },
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 66.0),
                        child: Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            "Use the account aggregator",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Padding(
                        padding: EdgeInsets.only(left: 60.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Chip(
                            backgroundColor: Color(0xFFB81C22),
                            labelStyle: TextStyle(color: Colors.white),
                            label: Text('Recommended'),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),

              // Card(
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(15.0),
              //   ),
              //   elevation: 5,
              //   child: Padding(
              //     padding: const EdgeInsets.all(2),
              //     child: Column(
              //       children: [
              //         ListTile(
              //           title: const Text(
              //             'Internet Banking',
              //             style: TextStyle(
              //                 fontSize: 16, fontWeight: FontWeight.bold),
              //           ),
              //           leading: Radio(
              //             value: "Internet Banking",
              //             groupValue: consent,
              //             onChanged: (value) {
              //               setState(() {
              //                 consent = value.toString();
              //               });
              //             },
              //           ),
              //         ),
              //         const Padding(
              //           padding: EdgeInsets.only(left: 66.0),
              //           child: Align(
              //             alignment: AlignmentDirectional.topStart,
              //             child: Text(
              //               "Verify via Internet Banking",
              //               style: TextStyle(
              //                   fontSize: 14, fontWeight: FontWeight.w400),
              //             ),
              //           ),
              //         ),
              //         const SizedBox(height: 16),
              //       ],
              //     ),
              //   ),
              // ),

              // const SizedBox(
              //   height: 16,
              // ),
              // Card(
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(15.0),
              //   ),
              //   elevation: 5,
              //   child: Padding(
              //     padding: const EdgeInsets.all(2),
              //     child: Column(
              //       children: [
              //         ListTile(
              //           title: const Text(
              //             'E -Statements',
              //             style: TextStyle(
              //                 fontSize: 16, fontWeight: FontWeight.bold),
              //           ),
              //           leading: Radio(
              //             value: "E-Statements",
              //             groupValue: consent,
              //             onChanged: (value) {
              //               setState(() {
              //                 consent = value.toString();
              //               });
              //             },
              //           ),
              //         ),
              //         const Padding(
              //           padding: EdgeInsets.only(left: 66.0),
              //           child: Align(
              //             alignment: AlignmentDirectional.topStart,
              //             child: Text(
              //               "Verify via Internet Banking",
              //               style: TextStyle(
              //                   fontSize: 14, fontWeight: FontWeight.w400),
              //             ),
              //           ),
              //         ),
              //         const SizedBox(height: 16),
              //       ],
              //     ),
              //   ),
              // ),
              const SizedBox(height: 0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    //LoanDisbursed
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Enach(),
                        ));
                  },
                  child: Text("Explore more options"),
                  style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Color(0xFFB81C22)),
                      foregroundColor: Color(0xFFB81C22),
                      backgroundColor: Color(0xFFFFFFFF)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                    "Note: By proceeding, you agree to be redirected to our third-party platform for verification."),
              ),
              const SizedBox(height: 60),
              Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Enach(),
                            ));

                        // showModalBottomSheet<void>(
                        //   shape: const RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.vertical(
                        //       top: Radius.circular(20),
                        //     ),
                        //   ),
                        //   context: context,
                        //   builder: (BuildContext context) {
                        //     return SizedBox(
                        //       height: 330,
                        //       child: Padding(
                        //         padding: const EdgeInsets.symmetric(
                        //             vertical: 1, horizontal: 10),
                        //         child: Column(
                        //           mainAxisAlignment:
                        //               MainAxisAlignment.spaceEvenly,
                        //           children: <Widget>[
                        //             const Text(
                        //               'LINK YOUR ACCOUNTS',
                        //               style: TextStyle(
                        //                 fontSize: 10,
                        //                 // fontWeight: FontWeight.w700,
                        //               ),
                        //             ),
                        //             const Text(
                        //               'Select the account with your primary source of income',
                        //               style: TextStyle(
                        //                 fontSize: 14,
                        //               ),
                        //             ),
                        //             Column(
                        //               children: <Widget>[
                        //                 ListTile(
                        //                   leading:
                        //                       Image.asset('assets/bob.png'),
                        //                   title: const Text(
                        //                     'Bank of Baroda',
                        //                     style: TextStyle(fontSize: 14),
                        //                   ),
                        //                   subtitle: const Text(
                        //                       'Savings ********1234 ',
                        //                       style: TextStyle(
                        //                           fontSize: 12,
                        //                           color: Color.fromRGBO(
                        //                               186, 186, 186, 1))),
                        //                   trailing: Checkbox(
                        //                     value: check1,
                        //                     onChanged: (bool? value) {
                        //                       setState(() {
                        //                         check1 = value;
                        //                       });
                        //                     },
                        //                   ),
                        //                 ),
                        //                 ListTile(
                        //                   leading:
                        //                       Image.asset('assets/icici.png'),
                        //                   title: const Text(
                        //                     'ICICI',
                        //                     style: TextStyle(fontSize: 14),
                        //                   ),
                        //                   subtitle: const Text(
                        //                       'Savings ********1234 ',
                        //                       style: TextStyle(
                        //                           fontSize: 12,
                        //                           color: Color.fromRGBO(
                        //                               186, 186, 186, 1))),
                        //                   trailing: Checkbox(
                        //                     value: check2,
                        //                     onChanged: (bool? value) {
                        //                       setState(() {
                        //                         check2 = value;
                        //                       });
                        //                     },
                        //                   ),
                        //                 ),
                        //                 ListTile(
                        //                   leading:
                        //                       Image.asset('assets/HDFC.png'),
                        //                   title: const Text(
                        //                     'HDFC',
                        //                     style: TextStyle(fontSize: 14),
                        //                   ),
                        //                   subtitle: const Text(
                        //                       'Savings ********1234 ',
                        //                       style: TextStyle(
                        //                           fontSize: 12,
                        //                           color: Color.fromRGBO(
                        //                               186, 186, 186, 1))),
                        //                   trailing: Checkbox(
                        //                     value: check3,
                        //                     onChanged: (bool? value) {
                        //                       setState(() {
                        //                         check3 = value;
                        //                       });
                        //                     },
                        //                   ),
                        //                 ),
                        //               ],
                        //             ),
                        //             SizedBox(
                        //               width: double.infinity,
                        //               child: ElevatedButton(
                        //                 onPressed: () {

                        //                   //LoanDisbursed
                        //                   Navigator.push(
                        //                       context,
                        //                       MaterialPageRoute(
                        //                         builder: (context) =>
                        //                             Approval(),
                        //                       ));
                        //                 },
                        //                 child: const Text("Link Account"),
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //       ),
                        //     );
                        //   },
                        // );
                      },
                      child: const Text("Next"),
                    ),
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
