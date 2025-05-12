import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD-0-yO09goZvu343ty7qbCPwohZHH_c-Y",
            authDomain: "stroke-b75b5.firebaseapp.com",
            projectId: "stroke-b75b5",
            storageBucket: "stroke-b75b5.firebasestorage.app",
            messagingSenderId: "367083262179",
            appId: "1:367083262179:web:545df77815b70e932735d6",
            measurementId: "G-EGCXRZKXPV"));
  } else {
    await Firebase.initializeApp();
  }
}
