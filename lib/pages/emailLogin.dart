import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:sar/pages/basicInfo.dart';
import 'package:sar/pages/signUp.dart';
import 'package:sar/resources/auth_methods.dart';
import 'package:sar/utils/utils.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

bool isChecked = false;

class EmailVerification extends StatefulWidget {
  const EmailVerification({super.key});

  @override
  State<EmailVerification> createState() => _EmailVerificationState();
}

String cardSel = 'agent';

class _EmailVerificationState extends State<EmailVerification> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void loginUser() async {
    setState(() {
      _isLoading = true;
    });
    String res = await AuthMethods().loginUser(
        email: _emailController.text, password: _passwordController.text);
    if (res == "success") {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const BasicInformation()));
    } else {
      showSnackBar(res, context);
    }
    setState(() {
      _isLoading = false;
    });
  }

  void navigateToSignUp() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SignupScreen(),
      ),
    );
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
                "Login to your account",
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
                      const Text(
                        "Please enter accurate information that matches your KYC documents.",
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 20),

                      TextFormField(
                        autofocus: false,
                        controller: _emailController,
                        onChanged: (value) {
                          setState(() {});
                        },
                        decoration: const InputDecoration(
                          labelText: "Enter email",
                          hintText: "Enter email",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),

                      TextFormField(
                        obscureText: true,
                        autofocus: false,
                        controller: _passwordController,
                        onChanged: (value) {
                          setState(() {});
                        },
                        decoration: const InputDecoration(
                          labelText: "Password",
                          hintText: "Password",
                          border: OutlineInputBorder(),
                        ),
                      ),

// mobile
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),

              Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: loginUser,

                      child: !_isLoading
                          ? const Text(
                              'Login',
                            )
                          : const CircularProgressIndicator(
                              color: Colors.white,
                            ),
                      // child: const Text("Login"),
                    ),
                  ),
                ),
              ),
              
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: const Text(
                      "Don't have account!      ",
                    ),
                  ),
                  GestureDetector(
                    onTap: navigateToSignUp,
                    child: Container(
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 0),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
