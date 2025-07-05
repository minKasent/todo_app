import 'package:flutter/material.dart';
import 'package:flutter_rc/screen/login_screen.dart';
import 'package:flutter_rc/screen/registration_screen.dart';
import 'package:flutter_rc/screen/splash_screen.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const LoginScreen(),
      // home: const SplashScreen(),
    );

  }
}
