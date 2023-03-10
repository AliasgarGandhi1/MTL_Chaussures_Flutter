import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mtl_chassures/splash_screen.dart';

import 'EmailVerification/auth_page.dart';
import 'EmailVerification/firebase_constants.dart';
import 'Navigation/search_place.dart';
import 'auth_service.dart';
import 'package:get/get.dart';
//
//
//
 void main() async{
   WidgetsFlutterBinding.ensureInitialized();
   await firebaseInitialization;
   runApp( MyApp());
 }
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    home: AuthPage(),
    );
  }
}
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       themeMode: ThemeMode.system,
//       debugShowCheckedModeBanner: false,
//       home: AuthService().handleAuthState(),
//     );
//   }
// }


