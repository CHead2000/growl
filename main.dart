import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:michiganyelp/screens/sign-in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB0saLDeetUV-XoeIsojab4SQqiFXOAzVw",
            authDomain: "growl-4a119.firebaseapp.com",
            databaseURL: "https://growl-4a119-default-rtdb.firebaseio.com",
            projectId: "growl-4a119",
            storageBucket: "growl-4a119.appspot.com",
            messagingSenderId: "1027772714365",
            appId: "1:1027772714365:web:2c4452a87affc3f51a5014",
            measurementId: "G-3MH8YRNCQ8"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(MaterialApp(
    title: '497 Project',
    theme: ThemeData(
        primaryColor: Colors.yellow[300],
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          primary: Colors.blueGrey,
          onPrimary: Colors.white,
          elevation: 5,
          //minimumSize: const Size(60, 60),
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
          textStyle: const TextStyle(fontSize: 35),
        ))),
    home: const SignIn(),
  ));
}
