import 'package:flutter/material.dart';
import 'package:sar/pages/PL/vKYC.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

enum ProductType { Gold, Silver, Dimond, Blank }

class KYC_PL extends StatefulWidget {
  const KYC_PL({super.key});

  @override
  State<KYC_PL> createState() => _KYC_PLState();
}

class _KYC_PLState extends State<KYC_PL> {
  ProductType? _productType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("KYC Module"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: const <Widget>[SizedBox(width: 15)],
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(" "), Text("4/4")],
              ),
              const SizedBox(height: 10),
              const StepProgressIndicator(
                totalSteps: 4,
                currentStep: 3,
                selectedColor: Color(0xff022DDB),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Complete KYC',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, top: 0),
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.topRight,
                        child: Chip(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          )),
                          backgroundColor: Color(0xFFB81C22),
                          labelStyle: TextStyle(color: Colors.white),
                          label: Text('Recommended'),
                        ),
                      ),
                      RadioListTile<ProductType>(
                        contentPadding: const EdgeInsets.all(0.0),
                        value: ProductType.Gold,
                        groupValue: _productType,
                        dense: true,
                        title: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Video KYC',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 12.0),
                                child: Text(
                                  'Fast and paperless KYC_PL verification',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ]),
                        onChanged: (value) {
                          setState(() {
                            _productType = value;
                          });
                        },
                      ),

                      // ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
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
                              title: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Biometric',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'We will collect your biometric details for paperless KYC_PL',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: 115,
                                  )
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
                          builder: (context) => VideoKYC_PL(),
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
