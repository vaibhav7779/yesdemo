import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
import 'package:sar/pages/add_bank.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

bool isChecked = false;

class Employment extends StatefulWidget {
  const Employment({super.key});

  @override
  State<Employment> createState() => _EmploymentState();
}

class _EmploymentState extends State<Employment> {
  String dropdownIncome = 'Salaried';
  String dropdownComp = 'Other';
  bool? check1 = false;
  bool? check2 = false;
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
              // const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [Text("Employment Details"), Text("3/11")],
              ),
              const SizedBox(height: 10),
              const StepProgressIndicator(
                totalSteps: 11,
                currentStep: 3,
                selectedColor: Color(0xFF45C00B),
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
                      const Text(
                        "We will never try to contact your company",
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 20),
                      DropdownButtonFormField(
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Income Type',
                          labelStyle: TextStyle(color: Colors.grey),
                        ),
                        iconEnabledColor: const Color.fromRGBO(247, 182, 26, 1),
                        dropdownColor: Colors.white,
                        value: dropdownIncome,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownIncome = newValue!;
                          });
                        },
                        items: <String>[
                          'Salaried',
                          'Self Employed',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                            ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 20),
                      DropdownButtonFormField(
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Choose Company Name',
                          labelStyle: TextStyle(color: Colors.grey),
                        ),
                        iconEnabledColor: const Color.fromRGBO(247, 182, 26, 1),
                        dropdownColor: Colors.white,
                        value: dropdownComp,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownComp = newValue!;
                          });
                        },
                        items: <String>['EY', 'Placebo', 'Other']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                            ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "Tesseract PVT. LTD.",
                        decoration: const InputDecoration(
                          labelText: "Enter company name",
                          labelStyle: TextStyle(color: Colors.grey),

                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "2,50,000",
                        decoration: const InputDecoration(
                          labelText: "Your monthly income",
                          labelStyle: TextStyle(color: Colors.grey),

                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "amit.k@placebo.in",
                        decoration: const InputDecoration(
                          labelText: "Your official email id",
                          labelStyle: TextStyle(color: Colors.grey),

                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 32.0,
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet<void>(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 270,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  const Text(
                                    'VERIFY YOUR DETAILS',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text(
                                      'Enter OTP sent via mail to: amit.k@placebo.in'),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  TextFormField(
                                    autofocus: false,
                                    // initialValue: "123456",
                                    decoration: const InputDecoration(
                                      suffix: Text(
                                        "Resend OTP",
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(233, 122, 42, 1),
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      labelText: "Enter OTP",

                                      labelStyle: TextStyle(color: Colors.grey),

                                      border: OutlineInputBorder(),
                                      filled: true, //<-- SEE HERE
                                      fillColor: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
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
                                                builder: (context) =>
                                                    AddAccount(),
                                              ),
                                            );
                                          },
                                          child: const Text("Next"),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  TextButton(
                                      onPressed:
                                          (check1 == false && check1 == false)
                                              ? null
                                              : () {},
                                      child: const Text(
                                        "or verify via link",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(233, 122, 42, 1),
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: const Text("Next"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
