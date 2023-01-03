import 'package:flutter/material.dart';
import 'package:akademiya_osoznannosti/pages/01_home.dart';
import 'package:akademiya_osoznannosti/pages/02_info_about_rector.dart';
import 'package:akademiya_osoznannosti/pages/03_institutes.dart';
import 'package:akademiya_osoznannosti/pages/04_info_about_akademiya.dart';
import 'package:akademiya_osoznannosti/pages/05_courses.dart';
import 'package:akademiya_osoznannosti/pages/06_sign_up_cours.dart';



void main() => runApp(MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.deepOrangeAccent,

  ),
  home: Courses(),
));



