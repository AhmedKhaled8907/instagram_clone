import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram_clone/core/utils/widgets/custom_text_field.dart';

import '../../../../../../core/utils/image_picker.dart';
import '../../../../../../core/utils/widgets/custom_button.dart';
import '../../../../data/firebase_methods.dart';

class SignUpUserInfo extends StatefulWidget {
  const SignUpUserInfo({super.key});

  @override
  State<SignUpUserInfo> createState() => SignUpUserInfoState();
}

class SignUpUserInfoState extends State<SignUpUserInfo> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final bioController = TextEditingController();
  final userNameController = TextEditingController();
  Uint8List? image;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void selectImage() async {
    Uint8List im = await pickImage(ImageSource.gallery);
    setState(() {
      image = im;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            image != null
                ? CircleAvatar(
                    radius: 64,
                    backgroundImage: MemoryImage(image!),
                  )
                : const CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage(
                      'https://t3.ftcdn.net/jpg/00/64/67/80/360_F_64678017_zUpiZFjj04cnLri7oADnyMH0XBYyQghG.jpg',
                    ),
                  ),
            Positioned(
              bottom: -5,
              left: 80,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[900],
                ),
                child: IconButton(
                  alignment: Alignment.center,
                  onPressed: selectImage,
                  icon: const Icon(
                    Icons.add_a_photo,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        //text field for user name
        CustomTextField(
          controller: userNameController,
          hintText: 'Enter your user name',
          keyboardType: TextInputType.text,
        ),
        const SizedBox(height: 24),

        //text field for email
        CustomTextField(
          controller: emailController,
          hintText: 'Enter your email address',
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

        //text field for bio
        CustomTextField(
          controller: bioController,
          hintText: 'Enter your bio',
          keyboardType: TextInputType.text,
        ),
        const SizedBox(height: 24),

        // login button
        CustomButton(
          onTap: () async {
            final res = await FirebaseMethods().signUpUser(
              email: emailController.text,
              password: passwordController.text,
              username: userNameController.text,
              bio: bioController.text,
              file: image!,
            );
            log(res);
          },
          text: 'Sign Up',
        ),
      ],
    );
  }
}
