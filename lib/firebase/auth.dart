import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:typed_data';
import 'package:flutter/material.dart';

class AuthMethod {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  // SIgn up user
  Future<String> signUpUser({
    required String phoneNumber,
    required String email,
    required String first,
    required String second,
    required String conform,
    required String password,
  }) async {
    String res = 'some error occur';
    try {
      if (phoneNumber.isNotEmpty ||
          email.isNotEmpty ||
          first.isNotEmpty ||
          second.isNotEmpty ||
          conform.isNotEmpty ||
          password.isNotEmpty) {
        // Auth for new user
        await _firebaseAuth.createUserWithEmailAndPassword(
            email: email, password: password);

        // add user to our database
        await _firestore.collection('users').add({
          'FirstName': first,
          'Last name': second,
          'Phone Number': phoneNumber,
          'Email Adders': email,
          'Conform Password': conform,
        });
      }
      res = 'success';
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}
