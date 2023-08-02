import 'package:flutter/material.dart';
import 'package:sar/pages/SA/AddressConfirmation.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

enum ProductType { Gold, Silver, Dimond, Blank }

class SavingsAccount extends StatefulWidget {
  const SavingsAccount({super.key});

  @override
  State<SavingsAccount> createState() => _SavingsAccountState();
}

class _SavingsAccountState extends State<SavingsAccount> {
  ProductType? _productType;

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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(" "), Text("2/4")],
              ),
              const SizedBox(height: 10),
              const StepProgressIndicator(
                totalSteps: 4,
                currentStep: 2,
                selectedColor: Color(0xff022DDB),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Choose an account type',
                style: TextStyle(
                  fontSize: 22,
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
                            child: RadioListTile<ProductType>(
                              contentPadding: const EdgeInsets.all(0.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                              value: ProductType.Gold,
                              groupValue: _productType,
                              title: const Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Savings Account Pro Plus ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 60.0),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      // child: Chip(
                                      // backgroundColor: Color(0xFFB81C22),
                                      //labelStyle:
                                      //  TextStyle(color: Colors.white),
                                      //label: Text('Recommended'),
                                      // ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                ],
                              ),
                              dense: true,
                              onChanged: (value) {
                                setState(() {
                                  _productType = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 50.0),
                        child: Text(
                          'Open regular savings account at your convenience with additional features and services',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
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
                            child: RadioListTile<ProductType>(
                              contentPadding: const EdgeInsets.all(0.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                              value: ProductType.Silver,
                              groupValue: _productType,
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Savings Account Pro',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  const Text(
                                    'Open regular savings account at your convenience with a minimal average balance requirement',
                                  ),
                                  const SizedBox(
                                    width: 115,
                                    height: 12,
                                  ),
                                  SizedBox(
                                    child: Image.asset('assets/card.jpg'),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  const Text(
                                    '1.Fast,easy and paperless way for opening account',
                                  ),
                                  const SizedBox(height: 12),
                                  const Text(
                                      '2. Complementry Virtual Debit card'),
                                ],
                              ),
                              dense: true,
                              onChanged: (value) {
                                setState(() {
                                  _productType = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddressConfirmation(),
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
