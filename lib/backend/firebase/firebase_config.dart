import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDsEF8DvYGsGReBQlRP9urCY8EGVBM6sN4",
            authDomain: "pich-directly-acrzxi.firebaseapp.com",
            projectId: "pich-directly-acrzxi",
            storageBucket: "pich-directly-acrzxi.appspot.com",
            messagingSenderId: "1042484502332",
            appId: "1:1042484502332:web:6595acb9567c96d7dfc839",
            measurementId: "G-FNPK4XF55H"));
  } else {
    await Firebase.initializeApp();
  }
}
