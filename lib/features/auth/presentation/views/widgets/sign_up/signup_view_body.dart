import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/widgets/logo_svg_picture.dart';

import 'go_to_login.dart';
import 'signup_text_user_info.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            const LogoSvgPicture(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            const SignUpUserInfo(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const GoToLogin(),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
