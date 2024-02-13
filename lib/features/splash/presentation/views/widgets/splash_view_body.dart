import 'package:flutter/material.dart';
import 'package:instagram_clone/features/auth/presentation/views/login_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  void navigateToLogin() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const LoginView(),
          ),
        );
      },
    );
  }

  @override
  void initState() {
    navigateToLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30).copyWith(
        bottom: 16,
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(flex: 2, child: Container()),
          Image.asset(
            'assets/images/instagram_splash.png',
            height: 64,
          ),
          Flexible(flex: 2, child: Container()),
          Text(
            'From',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 6),
          Image.asset(
            'assets/images/meta_splash.png',
            height: 16,
          ),
        ],
      ),
    );
  }
}
