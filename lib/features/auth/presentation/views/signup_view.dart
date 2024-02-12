import 'package:flutter/material.dart';

import 'widgets/sign_up/signup_view_body.dart';


class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SignUpViewBody(),
      ),
    );
  }
}
