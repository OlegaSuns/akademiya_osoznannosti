//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:akademiya_osoznannosti/pages/01_home.dart';
import 'package:akademiya_osoznannosti/pages/02_info_about_rector.dart';
import 'package:akademiya_osoznannosti/pages/03_institutes.dart';
import 'package:akademiya_osoznannosti/pages/04_info_about_akademiya.dart';
import 'package:akademiya_osoznannosti/pages/05_courses.dart';
import 'package:akademiya_osoznannosti/pages/06_sign_up_cours.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  // Инициализация в основной функции
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.deepOrangeAccent,
    ),
    initialRoute: '/',
    routes: {
      // Маршрутизация
      '/':(context) => Home(),
      '05_cources': (context) => Courses(),
      '03_institutes': (context) =>Insitutes(),
    },
  ));
}





