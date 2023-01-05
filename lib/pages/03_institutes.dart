import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class Insitutes extends StatefulWidget {
  const Insitutes({Key? key}) : super(key: key);

  @override
  State<Insitutes> createState() => _InsitutesState();
}

class _InsitutesState extends State<Insitutes> {

  List courses = [];

  void initFirebase() async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();

    print('Init FireBase compleate in Cource Window');

    // FirebaseFirestore.instance.collection("items").get().then((QuerySnapshot querySnapshot) {
    //   print(querySnapshot.docs.length);
    // });


  }

  @override
  void initState(){
    super.initState();

     initFirebase();

    courses.addAll(['1','2','купить']);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Список курсов'),
        centerTitle: true,
      ),
      body: StreamBuilder(



        stream: FirebaseFirestore.instance.collection('items').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){

    //   FirebaseFirestore.instance.collection("items").get().then((QuerySnapshot querySnapshot)




          if(!snapshot.hasData) return Text('Нет записей');
          return ListView.builder(

              itemCount: 4 ,


            //  itemCount: querySnapshot.docs.length ,
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
          );
        },
      ),
    );
  }
}
