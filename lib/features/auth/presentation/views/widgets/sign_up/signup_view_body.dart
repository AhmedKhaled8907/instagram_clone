import 'package:flutter/material.dart';

import '../../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../../core/utils/widgets/logo_svg_picture.dart';
import 'go_to_login.dart';
import 'signup_text_field_section.dart';
import 'user_image.dart';

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
          // user image
          const UserImage(),
          const SizedBox(height: 24),

          // text field section
          const SignUpTextFieldSection(),
          const SizedBox(height: 24),

          // login button
          CustomButton(
            onTap: () {},
            text: 'Sign Up',
          ),

          Flexible(flex: 2, child: Container()),
          // transtioning to log in
          const GoToLogin(),
        ],
      ),
    );
  }
}
