import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:reminderapp/helpers/constants/colors.dart';
import 'package:reminderapp/views/screens/screen_profile.dart';
import 'package:reminderapp/widgets/custom_button.dart';
import 'package:reminderapp/widgets/custom_container_textfield.dart';
import 'package:reminderapp/widgets/custom_image.dart';
import 'package:reminderapp/widgets/small_text.dart';

class ScreenEditProfile extends StatelessWidget {
  const ScreenEditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(onPressed: (){
            Get.back(result: true);
          }, icon: Icon(Icons.arrow_back_ios, color: Colors.white,)),
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImage(
            name: "logo",
          ),
          SmallText(text: "APP NAME", textColor: Colors.white, fontSize: 16,),
          CustomStyledTextField(hintText: "Name"),
          CustomStyledTextField(hintText: "Country"),
          CustomStyledTextField(hintText: "Mobile"),
          CustomStyledTextField(hintText: "Email"),
          CustomButton(text: "Confirm", onTap: (){
            Get.to(ScreenProfile());
          })
        ],
      ),
    );
  }
}
