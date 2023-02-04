import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA8ELMiHQxWVgI60724I3OMBY87r0wSe5I",
            authDomain: "testj6w.firebaseapp.com",
            projectId: "testj6w",
            storageBucket: "testj6w.appspot.com",
            messagingSenderId: "220329879017",
            appId: "1:220329879017:web:e5b8bf9918e37d9b135778",
            measurementId: "G-MP65PHPLWM"));
  } else {
    await Firebase.initializeApp();
  }
}
