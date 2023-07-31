import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'basicInfo.dart';

bool isChecked = false;

class OTPValidation extends StatefulWidget {
  const OTPValidation({super.key});

  @override
  State<OTPValidation> createState() => _OTPValidationState();
}

class _OTPValidationState extends State<OTPValidation> {
  OtpFieldController otpController = OtpFieldController();

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
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [Text("Verify Your Details"), Text("1/11")],
              ),
              const SizedBox(height: 10),
              const StepProgressIndicator(
                totalSteps: 11,
                currentStep: 1,
                selectedColor: Color(0xFF45C00B),
              ),
              const SizedBox(height: 34),
              const Text(
                "Verify your mobile",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 16),
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
                      Center(
                        child: const Text(
                          "Enter OTP",
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ),
                      const SizedBox(height: 20),
                      OTPTextField(
                          obscureText: true,
                          controller: otpController,
                          length: 4,
                          width: MediaQuery.of(context).size.width,
                          textFieldAlignment: MainAxisAlignment.spaceEvenly,
                          fieldWidth: 45,
                          fieldStyle: FieldStyle.box,
                          outlineBorderRadius: 15,
                          style: TextStyle(fontSize: 32),
                          onChanged: (pin) {
                            print("Changed: " + pin);
                          },
                          onCompleted: (pin) {
                            print("Completed: " + pin);
                          }),
                      SizedBox(height: 20),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Resend OTP",
                            style: TextStyle(
                                color: Color.fromRGBO(233, 122, 42, 1)),
                          ))
                    ],
                  ),
                ),
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
                                builder: (context) => BasicInformation()));
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
