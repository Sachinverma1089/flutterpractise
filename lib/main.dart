import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:practiseapp/firebase_options.dart';
import 'package:practiseapp/widgets/alert.dart';
import 'package:practiseapp/widgets/animated_text.dart';
import 'package:practiseapp/widgets/bottomNavigation.dart';
import 'package:practiseapp/widgets/bottomSheet.dart';
import 'package:practiseapp/widgets/button.dart';
import 'package:practiseapp/widgets/container_sized.dart';
import 'package:practiseapp/widgets/crudoperation1.dart';
import 'package:practiseapp/widgets/day19ui.dart';
import 'package:practiseapp/widgets/day20.dart';
import 'package:practiseapp/widgets/encryptionStrings.dart';
import 'package:practiseapp/widgets/login_page.dart';
import 'package:practiseapp/widgets/dismissible.dart';
import 'package:practiseapp/widgets/drawer.dart';
import 'package:practiseapp/widgets/dropdown.dart';
import 'package:practiseapp/widgets/forms.dart';
import 'package:practiseapp/widgets/image.dart';
import 'package:practiseapp/widgets/imagepicker.dart';
import 'package:practiseapp/widgets/list_grid.dart';
import 'package:practiseapp/widgets/rowscols.dart';
import 'package:practiseapp/widgets/shimmerpackage.dart';
import 'package:practiseapp/widgets/snackbar.dart';
import 'package:practiseapp/widgets/stackwidget.dart';
import 'package:practiseapp/widgets/tabbar.dart';
import 'package:practiseapp/widgets/visacard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // if (kIsWeb) {
  //   // run the initialization for web
  //   await Firebase.initializeApp(
  //       options: FirebaseOptions(
  //           apiKey: 'AIzaSyAivL7gEy0xpqumqTiLwo-bEisj3UXloOY',
  //           authDomain: 'dayflutterlearning.firebaseapp.com',
  //           projectId: 'dayflutterlearning',
  //           storageBucket: 'dayflutterlearning.appspot.com',
  //           messagingSenderId: '123034517134',
  //           appId: '1:123034517134:web:b3eab7567de0a9018d13df',
  //           measurementId: 'G-1T4VTZ67BK'));
  // } else {
  //   await Firebase.initializeApp();
  // }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(brightness: Brightness.light, primaryColor: Colors.blue),
        // home: StreamBuilder(
        //   stream: FirebaseAuth.instance.authStateChanges(),
        //   builder: (context, snapshot) {
        //     if (snapshot.hasData) {
        //       return DatabaseOptions();
        //     } else {
        //       return Day24Authentication();
        //     }
        //   },
        // ));
        home: EncryptionString());
  }
}
