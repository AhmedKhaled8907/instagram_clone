import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/core/utils/colors.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(flex: 2, child: Container()),
          // svg image
          SvgPicture.asset(
            'assets/images/instagram.svg',
            colorFilter: const ColorFilter.mode(
              primaryColor,
              BlendMode.srcIn,
            ),
            height: 64,
            width: double.infinity,
          ),
          const SizedBox(height: 64),
          //text field for email
          const SizedBox(height: 64),

          //text field for password
          // login button
          // transtioning to sign up
        ],
      ),
    );
  }
}
