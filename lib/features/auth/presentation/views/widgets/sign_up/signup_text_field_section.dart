import 'package:flutter/material.dart';

import '../../../../../../core/utils/widgets/custom_text_field.dart';

class SignUpTextFieldSection extends StatefulWidget {
  const SignUpTextFieldSection({super.key});

  @override
  State<SignUpTextFieldSection> createState() => LoginTextFieldSectionState();
}

class LoginTextFieldSectionState extends State<SignUpTextFieldSection> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final bioController = TextEditingController();
  final userNameController = TextEditingController();

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
        //text field for user name
        CustomTextField(
          controller: emailController,
          hintText: 'Enter your user name',
          keyboardType: TextInputType.text,
        ),
        const SizedBox(height: 16),

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
        const SizedBox(height: 16),

        //text field for email
        CustomTextField(
          controller: emailController,
          hintText: 'Enter your bio',
          keyboardType: TextInputType.text,
        ),
      ],
    );
  }
}
