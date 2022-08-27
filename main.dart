import 'pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:camera/camera.dart';
//import 'package:tflite/tflite.dart';

//List<CameraDescription>? cameras;

void main()  async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage()
    );
  }
}