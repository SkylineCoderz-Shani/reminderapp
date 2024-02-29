import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminderapp/helpers/constants/colors.dart';
import 'package:reminderapp/views/screens/screen_home.dart';
import 'package:reminderapp/widgets/custom_button.dart';
import 'package:reminderapp/widgets/custom_container_textfield.dart';
import 'package:reminderapp/widgets/small_text.dart';

class ScreenSelectLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: appColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: LargeText(
          text: "Select",
          textColor: Colors.white,
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Get.back(result: true);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: LargeText(
              text: "Login",
              fontSize: 18,
              textColor: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          LargeText(
            text: "APP LOGO",
            fontSize: 18,
            fontWeight: FontWeight.w600,
            textColor: Colors.white,
          ),
          SmallText(
            text: "Welcome back",
            textColor: Colors.white,
          ),
          CustomStyledTextField(
            hintText: "Email",
          ),
          CustomStyledTextField(
            hintText: "Password",
            isPasswordField: true,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forget Password",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                )),
          ),
          CustomButton(
              text: "Login",
              onTap: () {
                Get.to(ScreenHomePage());
              }),
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
