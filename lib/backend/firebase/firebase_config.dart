import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDeiMJP-BKcVlDnEg9mhjOhepHw3YDTAt0",
            authDomain: "rides-7e9c4.firebaseapp.com",
            projectId: "rides-7e9c4",
            storageBucket: "rides-7e9c4.appspot.com",
            messagingSenderId: "39648752082",
            appId: "1:39648752082:web:dce8dea24d9ace5899d80b",
            measurementId: "G-24L761MZRF"));
  } else {
    await Firebase.initializeApp();
  }
}
