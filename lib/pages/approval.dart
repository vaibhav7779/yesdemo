import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
import 'package:sar/pages/loanSummary.dart';
import 'package:sar/pages/thirdparty.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:sar/global.dart' as globals;
import 'package:intl/intl.dart' as intl;

enum ProductType { Gold, Silver, Dimond, Blank }

class Approval extends StatefulWidget {
  const Approval({super.key});

  @override
  State<Approval> createState() => _ApprovalState();
}

class _ApprovalState extends State<Approval> {
  int amount = globals.amount;
  ProductType? _productType;

  var format = intl.NumberFormat.currency(
    locale: 'en_IN',
    decimalDigits: 0, // change it to get decimal places
    symbol: '₹ ',
  );
  String _handleCalculation(amount, months) {
    double rate = 9.5;
    double interest = (amount * (rate * 0.01)) / months;
    double total = ((amount / months) + interest).toInt();

    String ret = format.format(total);
    // String val = "₹$ret";
    return ret;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Loan"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: const <Widget>[
          Icon(Icons.question_mark_rounded),
          SizedBox(width: 15)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
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
              const SizedBox(height: 24),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Loan Offer"), Text("7/11")],
              ),
              const SizedBox(height: 10),
              const StepProgressIndicator(
                totalSteps: 11,
                currentStep: 7,
                selectedColor: Color(0xFF45C00B),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  const Text(
                    "Congratulations!",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                  const Text(
                    "You have been approved for a",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "loan of up to",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w200),
                      ),
                      Text(
                        "₹2,00,000",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff45C00B),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Use the slider below to choose the loan amount",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                  const Text(
                    "you want to apply for",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                  Slider(
                    label: "Select Age",
                    value: amount.toDouble(),
                    activeColor: Color(0xffF7B61A),
                    onChanged: (value) {
                      setState(() {
                        amount = value.toInt();
                      });
                    },
                    min: 5000,
                    max: 200000,
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: const BorderSide(
                    color: Color(0xFFF7B61A),
                    width: 3,
                  ),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Apply for",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          ShaderMask(
                            shaderCallback: (bounds) => const LinearGradient(
                              colors: [Color(0xffF7B61A), Color(0xffE97A2A)],
                            ).createShader(bounds),
                            child: Text(
                              format.format((amount > 0) ? amount : 200000),
                              style: TextStyle(
                                fontSize: 34.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Pick a recommended EMI plan',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Text(
                        'Interest @ 20.88% PA',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffBABABA)),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: RadioListTile<ProductType>(
                              contentPadding: const EdgeInsets.all(0.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                              value: ProductType.Gold,
                              groupValue: _productType,
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    _handleCalculation(amount, 48),
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    'x 48 months',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Chip(
                                    backgroundColor: Color(0xFFB81C22),
                                    labelStyle: TextStyle(color: Colors.white),
                                    label: Text('Recommended'),
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
                      Row(
                        children: [
                          Expanded(
                            child: RadioListTile<ProductType>(
                              contentPadding: const EdgeInsets.all(0.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                              value: ProductType.Silver,
                              groupValue: _productType,
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    _handleCalculation(amount, 36),
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    'x 36 months',
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
                      Row(
                        children: [
                          Expanded(
                            child: RadioListTile<ProductType>(
                              contentPadding: const EdgeInsets.all(0.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                              value: ProductType.Dimond,
                              groupValue: _productType,
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    _handleCalculation(amount, 18),
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    'x 18 months',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: 120,
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
              const SizedBox(height: 40),
              Align(
                alignment: Alignment.bottomLeft,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (_productType == null)
                        ? null
                        : () {
                            setState(() {
                              globals.amount = amount;
                            });
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoanSummary(),
                              ),
                            );
                          },
                    child: const Text("Review loan details"),
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
