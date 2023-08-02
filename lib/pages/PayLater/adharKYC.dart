import 'package:flutter/material.dart';
import 'package:sar/pages/PayLater/successPL.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class VideoKYC_PayLater extends StatefulWidget {
  const VideoKYC_PayLater({super.key});

  @override
  State<VideoKYC_PayLater> createState() => _VideoKYC_PayLaterState();
}

class _VideoKYC_PayLaterState extends State<VideoKYC_PayLater> {
  bool _value = false;
  String lang = 'English';

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
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(" "), Text("4/4")],
              ),
              const SizedBox(height: 10),
              const StepProgressIndicator(
                totalSteps: 4,
                currentStep: 4,
                selectedColor: Color(0xff022DDB),
              ),
              const SizedBox(height: 30),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      TextFormField(
                        autofocus: false,
                        initialValue: "6231-3452-2341",
                        decoration: const InputDecoration(
                          labelText: "Enter Aadhar or VID",
                          border: OutlineInputBorder(),
                          // filled: true, //<-- SEE HERE
                          fillColor: Color(0xFFF5F5F5),
                        ),
                        // readOnly: true,
                      ),
                      const SizedBox(height: 20),
                      TextButton(
                          onPressed: () {},
                          child: Text("Click here to generate VID")),
                      const SizedBox(height: 20),
                      const Text(
                        "Terms and Conditions",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),

                      const SizedBox(height: 20),

                      //

                      Row(
                        children: [
                          Expanded(
                              child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              maxWidth: 300,
                            ),
                            child: Text("Select your preferred language"),
                          )),
                          Expanded(
                              child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              maxWidth: 300,
                            ),
                            child: DropdownButtonFormField(
                              decoration: const InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff022DDB), width: 1),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff022DDB), width: 1),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "English",
                                labelStyle: TextStyle(color: Color(0xff022DDB)),
                              ),
                              iconEnabledColor: const Color(0xff022DDB),
                              dropdownColor: Colors.white,
                              value: lang,
                              onChanged: (String? newValue) {
                                setState(() {
                                  lang = newValue!;
                                });
                              },
                              items: <String>[
                                'English',
                                'Hindi',
                                'Marathi',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(color: Color(0xff022DDB)),
                                  ),
                                );
                              }).toList(),
                            ),
                          )),
                        ],
                      ),
                      //
                      const SizedBox(
                        height: 20,
                      ),
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
                          const Flexible(
                            child: Text(
                              "I agree to the Terms and Conditions and Privacy Policy",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _value == true
                        ? () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SuccessPayLater(),
                              ),
                            );
                          }
                        : null,
                    child: const Text('Proceed'),
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
}
