import 'package:flutter/material.dart';

enum ProductType { Gold, Silver, Dimond, Blank }

class AddressConfirmation extends StatefulWidget {
  const AddressConfirmation({super.key});

  @override
  State<AddressConfirmation> createState() => _AddressConfirmationState();
}

class _AddressConfirmationState extends State<AddressConfirmation> {
  String? consent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Savings Account"),
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
              const SizedBox(
                height: 20,
              ),
              const Text(
                  'You are being assisted by our bank representative Sakshi',
                  style: TextStyle(fontSize: 18)),
              const SizedBox(
                height: 20,
              ),
              const Text("Progress bar"),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Current Address Confirmation',
                style: TextStyle(
                  fontSize: 18,
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
                              onChanged: (value) {
                                setState(() {
                                  consent = value.toString();
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
              const SizedBox(height: 12),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => KYC(),
                      //   ),
                      // );
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
