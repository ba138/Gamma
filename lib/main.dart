import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gamma/screens/spalsh%20screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}
