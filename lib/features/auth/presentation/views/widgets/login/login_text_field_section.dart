import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/widgets/custom_text_field.dart';
import 'package:instagram_clone/core/utils/widgets/show_snack_bar.dart';
import '../../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../../core/utils/widgets/custom_circular_indicator.dart';
import '../../../../data/firebase_methods.dart';

class LoginTextFieldSection extends StatefulWidget {
  const LoginTextFieldSection({super.key});

  @override
  State<LoginTextFieldSection> createState() => LoginTextFieldSectionState();
}

class LoginTextFieldSectionState extends State<LoginTextFieldSection> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLoading = false;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void logInUser() async {
    setState(() {
      isLoading = true;
    });
    final res = await FirebaseMethods().signInUser(
      email: emailController.text,
      password: passwordController.text,
    );
    if (res == 'success') {
    } else {
      if (context.mounted) {
        showSnackBar(res, context);
      }
    }
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //text field for email
        CustomTextField(
          controller: emailController,
          hintText: 'Enter your email',
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 24),

        //text field for password
        CustomTextField(
          controller: passwordController,
          hintText: 'Enter your password',
          keyboardType: TextInputType.emailAddress,
          isPass: true,
        ),
        const SizedBox(height: 24),

        // login button
        isLoading
            ? const CutomCircularIndicator()
            : CustomButton(
                onTap: logInUser,
                text: 'Login',
              ),
      ],
    );
  }
}

