import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminderapp/helpers/constants/colors.dart';
import 'package:reminderapp/views/screens/screen_select_login.dart';
import 'package:reminderapp/views/screens/screen_signup.dart';

import '../../widgets/custom_button.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            text: "Login",
            textColor: Colors.white,
            onTap: () {
              Get.to(ScreenSelectLogin());
            },
          ),
          SizedBox(
            height: 20,
          ),
          CustomButton(
            text: "Sinup",
            textColor: Colors.white,
            onTap: () {
              Get.to(ScreenSignUp());
            },
          ),
          SizedBox(
            height: 20,
          ),
          RichText(
              text: TextSpan(text: "Already have an your account ", children: [
            TextSpan(text: "|"),
            TextSpan(
              text: " Login",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => Get.to(ScreenSelectLogin()),
            ),
          ])),
        ],
      ).marginSymmetric(
        horizontal: 6,
      ),
    );
  }
}
