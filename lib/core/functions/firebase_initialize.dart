import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../firebase_options.dart';

Future<void> firebaseInitialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyB5tH6gn3ei_5okJvK247g8JxGaoYGBFrU",
        appId: "1:221351849206:web:73229040e078084b0790d7",
        messagingSenderId: "221351849206",
        authDomain: "instagram-clone-661d2.firebaseapp.com",
        projectId: "instagram-clone-661d2",
        storageBucket: "instagram-clone-661d2.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}
