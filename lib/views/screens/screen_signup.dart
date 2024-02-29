import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminderapp/helpers/constants/colors.dart';
import 'package:reminderapp/widgets/custom_button.dart';
import 'package:reminderapp/widgets/custom_container_textfield.dart';
import 'package:reminderapp/widgets/small_text.dart';

class ScreenSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: appColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back(result: true);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        backgroundColor: Colors.transparent,
        title: LargeText(
          text: "SignUp",
          textColor: Colors.white,
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: LargeText(
              text: "Signup",
              textColor: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          LargeText(
            text: "APP LOGO",
            textColor: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          SmallText(
            text: "Let’s Get It Started!",
            textColor: Colors.white,
          ),
          CustomStyledTextField(
            hintText: "Name",
          ),
          CustomStyledTextField(
            hintText: "Country",
          ),
          CustomStyledTextField(
            hintText: "Mobile",
          ),
          CustomStyledTextField(
            hintText: "Email",
          ),
          CustomStyledTextField(
            hintText: "Password",
            isPasswordField: true,
          ),
          CustomStyledTextField(
            hintText: "Re-Password",
            isPasswordField: true,
          ),
          CustomButton(
            text: "Sign Up",
            onTap: () {},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                text: "Facebook",
                width: Get.width * .4,
                buttonColor: CupertinoColors.systemBlue,
                onTap: () {},
                icon: Image.asset(
                  "assets/images/facebook (8) 1.png",
                ),
              ),
              CustomButton(
                text: "Google",
                width: Get.width * .4,
                buttonColor: CupertinoColors.black,
                onTap: () {},
                icon: Image.asset("assets/images/ic_google.png"),
              ),
            ],
          ),
        ],
      ).marginSymmetric(horizontal: 6),
    );
  }
}
