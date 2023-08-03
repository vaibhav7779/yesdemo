import 'package:flutter/material.dart';
import 'package:sar/pages/creditcard/success.dart';
import 'package:sar/pages/HL/offer_hl.dart';
import 'package:sar/pages/PL/offer_pl.dart';
import 'package:sar/pages/PayLater/offer.dart';
// import 'package:sar/pages/AddressConfirmation.dart';
// import 'package:sar/pages/PL/offer_hl.dart';
import 'package:sar/pages/SA/Savings_account.dart';
import 'package:sar/pages/creditcard/card.dart';

//import 'package:sar/pages/login.dart';

class SelectProduct extends StatefulWidget {
  final String userType;
  const SelectProduct({super.key, required this.userType});

  @override
  State<SelectProduct> createState() => _SelectProductState();
}

class _SelectProductState extends State<SelectProduct> {
  bool? check1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Stack(
                      children: <Widget>[
                        // Container(
                        //   height: 160.0,
                        //   width: 170.0,
                        //   alignment: Alignment.topLeft,
                        //   child: const Padding(
                        //     padding: EdgeInsets.fromLTRB(20, 20, 8, 8),
                        //     child: Text(
                        //       'Presenting the YES BANK of today',
                        //       style: TextStyle(
                        //           color: Colors.white,
                        //           fontWeight: FontWeight.w700,
                        //           fontSize: 20.0),
                        //     ),
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 150.0, left: 20),
                        //   child: SizedBox(
                        //     width: 100,
                        //     // height: 40,
                        //     child: ElevatedButton(
                        //       onPressed: () {},
                        //       child: Text('Apply Now'),
                        //       style: ElevatedButton.styleFrom(
                        //           shape: RoundedRectangleBorder(
                        //             borderRadius:
                        //                 BorderRadius.circular(24), // <-- Radius
                        //           ),
                        //           backgroundColor:
                        //               Color.fromARGB(230, 247, 181, 26),
                        //           padding: EdgeInsets.only(top: 16, bottom: 16)),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.only(left: 6.0),
                    child: Text(
                      "Select Product",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  SavingsAccount(), //Change to valid path
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14, vertical: 14),
                                  child: Column(
                                    children: [
                                      Image.asset('assets/savings.jpg'),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "Open Savings A/C",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      GestureDetector(
                        onTap: (widget.userType == "BankRep")
                            ? null
                            : () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        PreApprovedOfferPL(), //Change to valid path
                                  ),
                                );
                              },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14, vertical: 14),
                                  child: Column(
                                    children: [
                                      Image.asset('assets/PL.jpg'),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "Get Personal Loan",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: (widget.userType == "BankRep")
                            ? null
                            : () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        PreApprovedOfferPayLater(), //Change to valid path
                                  ),
                                );
                              },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14, vertical: 14),
                                  child: Column(
                                    children: [
                                      Image.asset('assets/pay_later.jpg'),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "Get Pay later",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      GestureDetector(
                        onTap: (widget.userType == "BankRep")
                            ? null
                            : () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        Cardimage(), //Change to valid path
                                  ),
                                );
                              },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14, vertical: 14),
                                  child: Column(
                                    children: [
                                      Image.asset('assets/CC.jpg'),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "Get Credit Card",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (context) =>
                          //         PreApprovedOfferPL(), //Change to valid path
                          //   ),
                          // );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14, vertical: 14),
                                  child: Column(
                                    children: [
                                      Image.asset('assets/forex.jpg'),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "Get Forex Card",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      GestureDetector(
                        onTap: (widget.userType == "BankRep")
                            ? null
                            : () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        PreApprovedOfferHL(), //Change to valid path
                                  ),
                                );
                              },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14, vertical: 14),
                                  child: Column(
                                    children: [
                                      Image.asset('assets/HL.jpg'),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "Get Home Loan",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
