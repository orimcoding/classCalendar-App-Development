import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA7BpVRRBfIYb1VTAaalzxs9A_npRvFFm8",
            authDomain: "class-calendar-applicat-4pbwai.firebaseapp.com",
            projectId: "class-calendar-applicat-4pbwai",
            storageBucket: "class-calendar-applicat-4pbwai.appspot.com",
            messagingSenderId: "58073383530",
            appId: "1:58073383530:web:79210c2124e97010c74013",
            measurementId: "G-9GQBL1LJS5"));
  } else {
    await Firebase.initializeApp();
  }
}
