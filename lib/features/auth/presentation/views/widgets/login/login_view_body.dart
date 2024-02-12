import 'package:flutter/material.dart';

import 'go_to_sign_up.dart';
import '../../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../../core/utils/widgets/logo_svg_picture.dart';
import 'login_text_field_section.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

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
          const LoginTextFieldSection(),
          const SizedBox(height: 16),

          // login button
          CustomButton(
            onTap: () {},
            text: 'Login',
          ),

          Flexible(flex: 2, child: Container()),
          // transtioning to sign up
          const GoToSignUp(),
        ],
      ),
    );
  }
}
