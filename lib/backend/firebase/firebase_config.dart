import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCcx1QoVpBpmepfHOm5gJ8pQJxuG_ecdT4",
            authDomain: "to-do-crs7je.firebaseapp.com",
            projectId: "to-do-crs7je",
            storageBucket: "to-do-crs7je.appspot.com",
            messagingSenderId: "959986519980",
            appId: "1:959986519980:web:e3dee4a0356af88f1f7409"));
  } else {
    await Firebase.initializeApp();
  }
}
