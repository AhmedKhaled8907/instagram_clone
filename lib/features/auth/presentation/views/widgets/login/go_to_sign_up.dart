import 'package:flutter/material.dart';
import 'package:instagram_clone/features/auth/presentation/views/signup_view.dart';

class GoToSignUp extends StatelessWidget {
  const GoToSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: const Text(
            'Don\'t have an Account? ',
            style: TextStyle(fontSize: 16),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SignUpView(),
              ),
            );
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: const Text(
              'Sign up',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
