import 'package:flutter/material.dart';

import '../../../../../../core/utils/widgets/custom_text_field.dart';

class LoginTextFieldSection extends StatefulWidget {
  const LoginTextFieldSection({super.key});

  @override
  State<LoginTextFieldSection> createState() => LoginTextFieldSectionState();
}

class LoginTextFieldSectionState extends State<LoginTextFieldSection> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //text field for email
        CustomTextField(
          controller: emailController,
          hintText: 'Enter your email address',
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 16),

        //text field for password
        CustomTextField(
          controller: passwordController,
          hintText: 'Enter your password',
          keyboardType: TextInputType.emailAddress,
          isPass: true,
        ),
      ],
    );
  }
}
