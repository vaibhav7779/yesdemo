import 'package:flutter/material.dart';
import 'package:sar/pages/emailLogin.dart';
import 'package:sar/pages/smsLogin.dart';
import 'package:sar/pages/signInOptions.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool? check1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: <Widget>[
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignInOptions(),
                    ));
              },
              child: const Text(
                "Sign In",
                style: TextStyle(color: Colors.white),
              )),
          const SizedBox(width: 15)
        ],
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),

// image

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/homePage.png',
                        height: 191,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                        height: 160.0,
                        width: 170.0,
                        alignment: Alignment.topLeft,
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 8, 8),
                          child: Text(
                            'Get your       pre-approved personal loan instantly.',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20.0),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 150.0, left: 20),
                      child: SizedBox(
                        width: 100,
                        // height: 40,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Apply Now'),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(24), // <-- Radius
                              ),
                              backgroundColor:
                                  Color.fromARGB(230, 247, 181, 26),
                              padding: EdgeInsets.only(top: 16, bottom: 16)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.only(left: 6.0),
                child: Text(
                  "Apply Now",
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
                  SizedBox(
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 45, vertical: 14),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.account_balance_wallet_outlined,
                                  size: 30,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Current A/C",
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  SizedBox(
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 45, vertical: 14),
                            child: Column(
                              children: [
                                Icon(Icons.savings_outlined, size: 30),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Savings A/C",
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        splashColor: Colors.amber,
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignInOptions()));
                        },
                        child: const Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 14),
                              child: Column(
                                children: [
                                  Icon(Icons.currency_rupee_outlined, size: 30),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Personal Loan",
                                    style: TextStyle(fontSize: 12),
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
                  SizedBox(
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 48, vertical: 14),
                            child: Column(
                              children: [
                                Icon(Icons.house_outlined, size: 30),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Home Loan",
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 6.0),
                child: Text(
                  "Rate of Interest",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
                clipBehavior: Clip.hardEdge,
                elevation: 5,
                child: InkWell(
                  splashColor:
                      const Color.fromRGBO(255, 31, 41, 1).withAlpha(30),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "CAR LOAN",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "8.00",
                                  style: TextStyle(
                                      fontSize: 42,
                                      color: Color.fromRGBO(255, 31, 41, 1)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 8,
                              height: 8,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [Text("%*")],
                                ),
                                Row(
                                  children: [Text("p.a.")],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "KNOW MORE",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Chip(
                              padding: EdgeInsets.only(top: 8, bottom: 8),
                              backgroundColor: Color(0xFFE11F2A),
                              labelStyle: TextStyle(color: Colors.white),
                              label: Text(
                                'Apply Now',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
                clipBehavior: Clip.hardEdge,
                elevation: 5,
                child: InkWell(
                  splashColor:
                      const Color.fromRGBO(255, 31, 41, 1).withAlpha(30),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "HOME LOAN",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "8.60",
                                  style: TextStyle(
                                      fontSize: 42,
                                      color: Color.fromRGBO(255, 31, 41, 1)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 8,
                              height: 8,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [Text("%*")],
                                ),
                                Row(
                                  children: [Text("p.a.")],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "KNOW MORE",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Chip(
                              padding: EdgeInsets.only(top: 8, bottom: 8),
                              backgroundColor: Color(0xFFE11F2A),
                              labelStyle: TextStyle(color: Colors.white),
                              label: Text(
                                'Apply Now',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
                clipBehavior: Clip.hardEdge,
                elevation: 5,
                child: InkWell(
                  splashColor:
                      const Color.fromRGBO(255, 31, 41, 1).withAlpha(30),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "EDUCATION LOAN",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "10.00",
                                  style: TextStyle(
                                      fontSize: 42,
                                      color: Color.fromRGBO(255, 31, 41, 1)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 8,
                              height: 8,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [Text("%*")],
                                ),
                                Row(
                                  children: [Text("p.a.")],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "KNOW MORE",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Chip(
                              padding: EdgeInsets.only(top: 8, bottom: 8),
                              backgroundColor: Color(0xFFE11F2A),
                              labelStyle: TextStyle(color: Colors.white),
                              label: Text(
                                'Apply Now',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
