import 'package:flutter/material.dart';
import 'package:instagram_clone/features/auth/presentation/views/widgets/sign_up/signup_text_field_section.dart';

import '../login/login_button.dart';
import '../logo_svg_picture.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(flex: 2, child: Container()),
          // svg image
          const LogoSvgPicture(),
          const SizedBox(height: 64),
          // text field section
          const SignUpTextFieldSection(),
          const SizedBox(height: 16),

          // login button
          const LoginButton(),

          Flexible(flex: 2, child: Container()),
          // transtioning to sign up
        ],
      ),
    );
  }
}
