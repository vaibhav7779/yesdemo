import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:sar/pages/loading.dart';

class DocumentSign extends StatefulWidget {
  const DocumentSign({super.key});

  @override
  State<DocumentSign> createState() => _DocumentSignState();
}

bool isButtonAction = false;

class _DocumentSignState extends State<DocumentSign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Image.asset('assets/doc.png'),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet<void>(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        context: context,
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: 227,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 1, horizontal: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  const Text(
                                    'DOCUMENT SIGNING',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    'Provide us with the following in order to setup your folio',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: true,
                                        onChanged: (value) {
                                          setState(() {
                                            isButtonAction = value!;
                                          });
                                        },
                                      ),
                                      const SizedBox(width: 10),
                                      const Text(
                                        "I accept and consent to the terms and conditions",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      onPressed: false
                                          ? null
                                          : () {
                                              //LoanDisbursed
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const Loading(
                                                      nextPage: 'succss',
                                                    ),
                                                  ));
                                            },
                                      child: const Text(
                                          "Accept and sign document"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: const Text("Sign Documents"),
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
