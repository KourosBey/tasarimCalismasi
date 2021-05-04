import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gazete/pages/UIHelper.dart';
import 'pages/LoginPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: Login(),
  ));
}

void kullaniciEkleme() {
  CollectionReference ref = FirebaseFirestore.instance.collection("users");
  if (emailController.value != null && passwordController.value != null) {
    ref.add({
      "Email": emailController.text,
      "Sifre": passwordController.text,
    });
  }
}
