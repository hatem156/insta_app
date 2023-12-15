import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:insta_app/pages/sign_in.dart';


void main() async {
  // to link this app with the firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyAlaNlKcCth1u0E7NeOaKSOYtb1ZWaJNbw",
      appId: "1:787203328558:android:99e39ee88f0706e820edbf",
      messagingSenderId: "787203328558",
      projectId: "chatapp2-4d624",
    ),
  );
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instgram',
      theme: ThemeData.dark(),
      home: const LoginPage(),
    );
  }
}
