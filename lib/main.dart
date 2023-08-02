import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sar/pages/HL/offer_hl.dart';
// import 'package:sar/pages/common/adharConfirmation.dart';
// import 'package:sar/pages/common/preApproved.dart';
import 'package:sar/pages/creditcard/card.dart';
import 'package:sar/pages/homePage.dart';
import 'package:sar/pages/selectProduct.dart';
// import 'package:sar/pages/homePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: 'AIzaSyBR-ToO0iB4x-L2iLMiL-nUCrw1Ba2b3Oc',
    appId: '1:1053815999383:web:602761fcd84ded965412d2',
    messagingSenderId: '1053815999383',
    projectId: 'sardemo-pl',
    storageBucket: 'sardemo-pl.appspot.com',
  ));

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // home: StreamBuilder(
      //   stream: FirebaseAuth.instance.authStateChanges(),
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.active) {
      //       // Checking if the snapshot has any data or not
      //       if (snapshot.hasData) {
      //         // if snapshot has data which means user is logged in then we check the width of screen and accordingly display the screen layout
      //         return const BasicInformation();
      //       } else if (snapshot.hasError) {
      //         return Center(
      //           child: Text('${snapshot.error}'),
      //         );
      //       }
      //     }

      //     // means connection to future hasnt been made yet
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return const Center(
      //         child: CircularProgressIndicator(color: Colors.red),
      //       );
      //     }

      //     return const HomePage();
      //   },
      // ),
      home: PreApprovedOfferHL(),
      // home: BasicInformation(),
      theme: ThemeData(
        // AppBar theme
        // primarySwatch: buildMaterialColor(Color(0xFFF7B61A)),
        primaryColor: Color(0xffF7B61A),
        appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xff022DDB), centerTitle: false),

// Elevated Button
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(184, 28, 34, 1),
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            // side: const BorderSide(color: Color.fromRGBO(251, 25, 41, 1)),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          ),
        ),

// textformfield
        textButtonTheme: TextButtonThemeData(
          style: ElevatedButton.styleFrom(foregroundColor: Color(0xff022DDB)),
        ),

// Text Button
        // textButtonTheme: TextButtonThemeData(
        //   style: ElevatedButton.styleFrom(
        //       foregroundColor: Color.fromRGBO(255, 31, 41, 1)),
        // ),

// checkbox theme
        unselectedWidgetColor: const Color(0xff022DDB),
        checkboxTheme: CheckboxThemeData(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          fillColor: MaterialStateColor.resolveWith(
            (states) => const Color(0xff022DDB),
          ),
        ),

        // title and subtitle fontSize and color
        listTileTheme: const ListTileThemeData(
          // titleTextStyle: TextStyle(fontSize: 20),
          // subtitleTextStyle: TextStyle(fontSize: 14),
          textColor: Colors.black,
        ),

        // text box outline color
        inputDecorationTheme: const InputDecorationTheme(
          isDense: true,
          contentPadding: EdgeInsets.fromLTRB(10, 18, 10, 18),
          filled: false,
          labelStyle: TextStyle(
            color: Color(0xFFBABABA),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
        radioTheme: RadioThemeData(
          fillColor:
              MaterialStateColor.resolveWith((states) => Color(0xff022DDB)),
        ), //
// cursor color
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.black,
        ),
      ),
    );
  }
}
