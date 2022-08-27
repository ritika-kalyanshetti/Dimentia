import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' ;

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);
  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  String? myEmail;
  @override
  Widget build(BuildContext context,) {
    return SingleChildScrollView(
      child: Column(
        children: [
          FutureBuilder(
            future: _fetch(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Text("Email : $myEmail");
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
        ],
      ),
    );
  }

  _fetch() async {
    //final firebaseUser = await FirebaseAuth.instance.currentUser();
    final FirebaseAuth auth = FirebaseAuth.instance;
    final User? firebaseuser = auth.currentUser;
    if(firebaseuser!=null)
      await FirebaseFirestore.instance
          .collection('users')
          .doc(firebaseuser.uid)
          .get()
          .then((ds){
        myEmail=ds.data()!['first Name'] ?? [];
        print(myEmail);
      }).catchError((e) {print(e);} );

  }
}



