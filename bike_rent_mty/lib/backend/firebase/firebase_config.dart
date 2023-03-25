import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCyA6kZAooomYDgWXoAq28AdFcYBcdhOqs",
            authDomain: "courts-1a123.firebaseapp.com",
            projectId: "courts-1a123",
            storageBucket: "courts-1a123.appspot.com",
            messagingSenderId: "402528040118",
            appId: "1:402528040118:web:2904b8c2f9815854486217"));
  } else {
    await Firebase.initializeApp();
  }
}
