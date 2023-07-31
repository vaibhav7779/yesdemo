import 'package:flutter/material.dart';
import 'package:sar/pages/basicInfo.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

bool isChecked = false;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

String cardSel = 'agent';

class _LoginPageState extends State<LoginPage> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  bool otpVisibility = false;
  User? user;
  String verificationID = "";

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
              const SizedBox(height: 10),
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
              const SizedBox(height: 40),
              const Text(
                "Enter your personal details",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        cardSel = 'customer';
                      });
                    },
                    child: Card(
                      shape: cardSel == 'customer'
                          ? new RoundedRectangleBorder(
                              side: new BorderSide(
                                  color: Color(0xFFF7B61A), width: 2.0),
                              borderRadius: BorderRadius.circular(4.0))
                          : new RoundedRectangleBorder(
                              side: new BorderSide(
                                  color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(4.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/customer.png',
                              height: 130,
                              width: 130,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Customer",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        cardSel = 'agent';
                      });
                    },
                    child: Card(
                      shape: cardSel == 'agent'
                          ? new RoundedRectangleBorder(
                              side: new BorderSide(
                                  color: Color(0xFFF7B61A), width: 2.0),
                              borderRadius: BorderRadius.circular(4.0))
                          : new RoundedRectangleBorder(
                              side: new BorderSide(
                                  color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(4.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/agent.png',
                              height: 130,
                              width: 130,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Agent",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
                      TextField(
                        controller: phoneController,
                        decoration: const InputDecoration(
                          labelText: "Mobile Number",
                          hintText: 'Phone Number',
                          prefix: Text('+91'),
                        ),
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                      ),
                      Visibility(
                        child: TextField(
                          controller: otpController,
                          decoration: InputDecoration(
                            hintText: 'OTP',
                            prefix: Padding(
                              padding: EdgeInsets.all(4),
                              child: Text(''),
                            ),
                          ),
                          maxLength: 6,
                          keyboardType: TextInputType.number,
                        ),
                        visible: otpVisibility,
                      ),

                      // Visibility(
                      //   child: OTPTextField(
                      //       // controller: otpController,
                      //       obscureText: true,
                      //       controller: otpController,
                      //       length: 6,
                      //       width: MediaQuery.of(context).size.width,
                      //       textFieldAlignment: MainAxisAlignment.spaceEvenly,
                      //       fieldWidth: 45,
                      //       fieldStyle: FieldStyle.box,
                      //       outlineBorderRadius: 15,
                      //       style: TextStyle(fontSize: 32),
                      //       onChanged: (pin) {
                      //         print("Changed: " + pin);
                      //       },
                      //       onCompleted: (pin) {
                      //         print("Completed: " + pin);
                      //       }),
                      //   visible: otpVisibility,
                      // ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                            "*We will be sending an OTP to verify your details"),
                      ),
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
                      // color: Colors.indigo[900],
                      onPressed: () {
                        if (otpVisibility) {
                          verifyOTP();
                        } else {
                          loginWithPhone();
                        }
                      },
                      child: Text(
                        otpVisibility ? "Verify OTP" : "Send OTP",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
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

  void loginWithPhone() async {
    auth.verifyPhoneNumber(
      phoneNumber: "+91" + phoneController.text,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential).then((value) {
          print("yes.You are logged in successfully");
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        print(e.message);
      },
      codeSent: (String verificationId, int? resendToken) {
        otpVisibility = true;
        verificationID = verificationId;
        setState(() {});
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  void verifyOTP() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationID, smsCode: otpController.text);

    await auth.signInWithCredential(credential).then(
      (value) {
        setState(() {
          user = FirebaseAuth.instance.currentUser;
        });
      },
    ).whenComplete(
      () {
        if (user != null) {
          Fluttertoast.showToast(
            msg: "yes.You are logged in successfully",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
          );
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => BasicInformation(),
            ),
          );
        } else {
          Fluttertoast.showToast(
            msg: "no.your login is failed",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        }
      },
    );
  }
}
