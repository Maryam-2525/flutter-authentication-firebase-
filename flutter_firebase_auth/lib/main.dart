import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/screens/login.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAqbBMOP8gbW3BLh_hsDJYlz5aO5b9QXBE",
            authDomain: "flutter-firebase-auth-9cd05.firebaseapp.com",
            projectId: "flutter-firebase-auth-9cd05",
            storageBucket: "flutter-firebase-auth-9cd05.appspot.com",
            messagingSenderId: "827959636160",
            appId: "1:827959636160:web:519b0183dde9db87ab7d25",
            measurementId: "G-Q4WNDDLGM4"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const logIN(),
    );
  }
}\
