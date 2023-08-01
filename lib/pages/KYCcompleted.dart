// ignore_for_file: unused_import

import 'package:flutter/material.dart';

enum ProductType { Gold, Silver, Dimond, Blank }

class KYCcompleted extends StatefulWidget {
  const KYCcompleted({super.key});

  @override
  State<KYCcompleted> createState() => _KYCcompletedState();
}

class _KYCcompletedState extends State<KYCcompleted> {
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
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Hi Sakshi,',
                style: TextStyle(
                  fontSize: 22,
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
                      SizedBox(
                        child: Image.asset('assets/fingerprint.jpg'),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'Sorry!',
                        style: TextStyle(
                          color: Color(0xff0025BA),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Text('We could not fetch your details.'),
                      const Text(' Please choose another KYC module'),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Complete KYC',
                style: TextStyle(
                  fontSize: 22,
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
                              value: ProductType.Gold,
                              groupValue: _productType,
                              title: const Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Physical KYC documents ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 60.0),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Chip(
                                        backgroundColor: Color(0xFFB81C22),
                                        labelStyle:
                                            TextStyle(color: Colors.white),
                                        label: Text('Recommended'),
                                      ),
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
                          'We will need your signed physical proof of address and proof of identity documents',
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
                                    'Video KYC',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  const Text(
                                    'We will need your Aadhaar authentication followed by Video KYC',
                                  ),
                                  const SizedBox(
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
                          builder: (context) => KYCcompleted(),
                        ),
                      );
                    },
                    child: const Text("Submit"),
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
