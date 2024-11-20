import 'package:flutter/material.dart';
import 'screens/login.dart';
import 'screens/registration.dart';
import 'screens/password_reset.dart';

void main() {
  runApp(MaterialApp(
    theme: customTheme(),
    home: LoginScreen(),
    routes: {
      '/registration': (context) => RegistrationScreen(),
      '/password_reset': (context) => PasswordResetScreen(),
    },
  ));
}

ThemeData customTheme() {
  return ThemeData(
    primarySwatch: Colors.deepOrange,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(horizontal: .0),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.lightBlueAccent,
        minimumSize: Size(150, 40),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: Colors.lightBlueAccent,
      ),
    ),
  );
}
