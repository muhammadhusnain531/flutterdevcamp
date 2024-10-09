import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';  // Import Firebase
import 'package:flutterdevcamp/devcamp_ui.dart';
import 'package:flutterdevcamp/signin_scren.dart';
import 'package:flutterdevcamp/signup_scren.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();  // Ensure Flutter is initialized
  await Firebase.initializeApp();  // Initialize Firebase before app launch
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LoginScreen(),  // Replace with your login screen widget
      ),
    );
  }
}
