import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/colors.dart';
import 'core/functions/firebase_initialize.dart';
import 'features/splash/presentation/views/splash_view.dart';

Future<void> main() async {
  await firebaseInitialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home:
          //  const ResponsiveLayout(
          //   webScreenLayout: WebScreenLayout(),
          //   mobileScreenLayout: MobileScreenLayout(),
          // ),
          const SplashView(),
    );
  }
}
