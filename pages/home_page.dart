//import 'package:dimentia1/features/gallery.dart';
//import 'package:dimentia1/pages/read_data.dart';
//import '/features/gallery.dart';
import '/pages/read_data.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        //title: const Text(
          //'Home', style: TextStyle(color: Colors.white, fontSize: 28),
        //),
        backgroundColor: Colors.deepPurple,
      ),

      body: ButtonBar(
        // ignore: sort_child_properties_last
        children: <Widget>[
          const Text("This is my virtual Memory", textAlign : TextAlign.center,
          style: TextStyle(color: Colors.black, fontSize: 20)),
          const SizedBox(height: 20),


          ElevatedButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AboutMe()),
            );
          },
            child: const Text('   About me  '),
            style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
            padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
            textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20))),),
           const SizedBox(height: 10),

          //ElevatedButton(onPressed: () {
            //Navigator.push(context, MaterialPageRoute(builder: (context) => Gallery())); },
            //child: const Text('   Pictures    '),
            //style: ButtonStyle(
              //  backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                //padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                //textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20))),),
          //const SizedBox(height: 10),

          ElevatedButton(onPressed: () {},
            child: const Text('  My Mood  '),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20))),),
          const SizedBox(height: 10),

          ElevatedButton(onPressed: () {FirebaseAuth.instance.signOut();},
            child: const Text('  Sign Out   '),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20))),),
        ],
        alignment: MainAxisAlignment.center,
        buttonHeight: 50,
        buttonMinWidth: 100,
        buttonPadding: const EdgeInsets.all(100),
        //EdgeInsets.fromLTRB(10, 90, 10, 10),
        //buttonPadding: EdgeInsets.only(top: 20),
        mainAxisSize: MainAxisSize.max,
      ),
    );
  }
}

/*
ElevatedButton(onPressed: () {},
              child: const Text('Emergency',
                  style: TextStyle(color: Colors.white, fontSize: 20))),
 */

/* buttonstyle
 /*
              child: const Text('About  Me',
                  style: TextStyle(color: Colors.white, fontSize: 20)
                  backgroundColor: Colors.deepPurple ),), */
 */

  /*
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children : [
            Text('Signed in as:' + user.email!),
            MaterialButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();

                },
                color: Colors.deepPurple[200],
                child: Text('sign out')
            )
          ],
        ),
      ),
    );
  }
}


   */