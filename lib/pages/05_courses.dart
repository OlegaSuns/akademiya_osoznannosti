import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class Courses extends StatefulWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {

  List courses = [];

  void initFirebase() async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();

    print('Init FireBase compleate in Cource Window');

  }

  @override
  void initState(){
    super.initState();

   // initFirebase();

    courses.addAll(['1','2','купить']);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Список курсов'),
        centerTitle: true,
      ),
    body: ListView.builder(
        itemCount: courses.length ,
        itemBuilder: (BuildContext, int index) {
          return InkWell(

            //hoverColor: Colors.amberAccent,
            //focusColor: Colors.amber,
            highlightColor: Colors.amber,
            onTap: () {
              //print(courses[index]);
              print(index);
              FirebaseFirestore.instance.collection('items').add({'item': index});

            },
            child: Card(
              child: ListTile(title: Text(courses[index])),
              

            ),
          );
        }
        ),
    );
  }
}
