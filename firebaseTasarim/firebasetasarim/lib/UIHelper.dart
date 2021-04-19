import 'dart:js';

import 'package:flutter/material.dart';
import 'package:proje_calismasi_1/mainPage.dart';

Widget eMail = TextFormField(
  style: TextStyle(color: Color(0xFF000000)),
  cursorColor: Color(0xFF9b9b9b),
  keyboardType: TextInputType.text,
  obscureText: false,
  decoration: InputDecoration(
    contentPadding: EdgeInsets.all(10),
    hintText: "Kullanıcı Adı",
    hintStyle: TextStyle(
      color: Color(0xFF9b9b9b),
      fontSize: 15,
      fontWeight: FontWeight.normal,
    ),
  ),
);

Widget sifre = TextFormField(
  style: TextStyle(color: Color(0xFF000000)),
  cursorColor: Color(0xFF9b9b9b),
  keyboardType: TextInputType.text,
  obscureText: true,
  decoration: InputDecoration(
    contentPadding: EdgeInsets.all(10),
    hintText: "Parola",
    hintStyle: TextStyle(
      color: Color(0xFF9b9b9b),
      fontSize: 15,
      fontWeight: FontWeight.normal,
    ),
  ),
);
