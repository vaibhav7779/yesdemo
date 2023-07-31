import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

bool isChecked = false;

class AddressConfirm extends StatefulWidget {
  const AddressConfirm({super.key});

  @override
  State<AddressConfirm> createState() => _AddressConfirmState();
}

bool detailsRadio = false;
bool temrsRadio = false;

class _AddressConfirmState extends State<AddressConfirm> {
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
              BreadCrumb(
                items: <BreadCrumbItem>[
                  BreadCrumbItem(
                    content: const Text(
                      "HOME",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                  ),
                  BreadCrumbItem(
                    content: const Text(
                      "PERSONAL LOANS",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                  ),
                  BreadCrumbItem(
                    content: const Text(
                      "APPLY",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
                divider: const Icon(Icons.chevron_right),
              ),
              const SizedBox(height: 30),
              const Text(
                "Welcome , Amit!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [Text("Personal Details"), Text("2/11")],
              ),
              const SizedBox(height: 10),
              const StepProgressIndicator(
                totalSteps: 11,
                currentStep: 2,
                selectedColor: Color(0xFF45C00B),
              ),
              const SizedBox(height: 24),
              const Text(
                "Address",
                style: const TextStyle(
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
                      const Text(
                        "Please confirm your address",
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue:
                            " House No.- 123 Sector- 10 Vasant Vihar, Delhi, 110011",
                        decoration: const InputDecoration(
                          labelText: "Communication Address",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFF5F5F5),
                        ),
                        readOnly: true,
                        maxLines: 3,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        autofocus: false,
                        initialValue: "helloamitXX@gmail.com",
                        decoration: const InputDecoration(
                          labelText: "Email Address",
                          border: OutlineInputBorder(),
                          filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFF5F5F5),
                        ),
                        readOnly: true,
                      ),
                      const SizedBox(height: 20),
                      const Divider(),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Checkbox(
                            value: detailsRadio,
                            onChanged: (value) {
                              setState(() {
                                detailsRadio = value!;
                              });
                            },
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "I agree my details are correct",
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Checkbox(
                            value: temrsRadio,
                            onChanged: (value) {
                              setState(() {
                                temrsRadio = value!;
                              });
                            },
                          ),
                          const SizedBox(width: 10),
                          const Flexible(
                            child: const Text(
                              "I agree to the Terms and Conditions and Privacy, and give my consent to Saraswat Bank as the lender to collect, store and verify my credit report from credit bureaus and KYC details (from CERSA) for processing loan application.",
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
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
                  onPressed: () {},
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
