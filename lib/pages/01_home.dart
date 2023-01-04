import 'package:flutter/material.dart';
import 'package:akademiya_osoznannosti/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List courses = [];

  void initFirebase() async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();

    print('Init FireBase compleate in Home Window');

  }

  @override
  void initState(){
    super.initState();

    initFirebase();

    courses.addAll(['1','2','купить']);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Главная страница'),
        centerTitle: true,
      ),
      body: Center(
          child: Text('Hello World',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 50))
      ),
      bottomNavigationBar : BottomNavigationBar(
          currentIndex : 0,
          fixedColor  : Colors.green,
          items : [
            BottomNavigationBarItem(
              label  : 'Главная',
              icon  : Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label : 'Курсы',
              icon  : Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label  : 'О Академии',
              icon  : Icon(Icons.account_circle),
            ),
          ],
          onTap  : (int indexOfItem) {
           // print(indexOfItem);
            if(indexOfItem==1)
              Navigator.pushNamed(context, '05_cources');
            if(indexOfItem==2)
              Navigator.pushNamed(context, '03_institutes');



          }),
    );
  }
}
  //}
//}