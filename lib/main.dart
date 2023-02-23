import 'package:flutter/material.dart';
import 'package:task_manager_with_rest_api/screen/onboarding/emailVerificationScreen.dart';
import 'package:task_manager_with_rest_api/screen/onboarding/loginScreen.dart';
import 'package:task_manager_with_rest_api/screen/onboarding/pinVerificationScreen.dart';
import 'package:task_manager_with_rest_api/screen/onboarding/registrationScreen.dart';
import 'package:task_manager_with_rest_api/screen/onboarding/setPasswordScreen.dart';
import 'package:task_manager_with_rest_api/screen/onboarding/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Task Manager",
      initialRoute: "/login",
      routes: {
        "/":(context)=>  splashScreen(),
        "/login":(context)=> loginScreen(),
        "/registration":(context)=> registrationScreen(),
        "/emailVerification":(context)=> emailVerificationScreen(),
        "/pinVerification":(context)=> pinVerificationScreen(),
        "/setPassword":(context)=> setPasswordScreen(),
      },


    );
  }
}
