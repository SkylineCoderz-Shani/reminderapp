import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminderapp/helpers/constants/colors.dart';
import 'package:reminderapp/views/screens/screen_editProfile.dart';
import 'package:reminderapp/widgets/custom_button.dart';
import 'package:reminderapp/widgets/custom_image.dart';
import 'package:reminderapp/widgets/small_text.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: (){
          Get.back(result: true);
        }, icon: Icon(Icons.arrow_back_ios, color: Colors.white,)),
      ),
      backgroundColor: appColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomImage(
            name: "logo",
          ),
          SmallText(text: "Profile", textColor: Colors.white, fontSize: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LargeText(text: "Name", textColor: Colors.white, fontSize: 16,),
              SmallText(text: "Zeeshan", textColor: Colors.white, fontSize: 12,),
            ],
          ),
          Divider(
            color: Colors.white,
            thickness: .4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LargeText(text: "Country", textColor: Colors.white, fontSize: 16,),
              SmallText(text: "Pakistan", textColor: Colors.white, fontSize: 12,),
            ],
          ),
          Divider(
            color: Colors.white,
            thickness: .4,
          ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LargeText(text: "Mobile No", textColor: Colors.white, fontSize: 16,),
          SmallText(text: "12345678", textColor: Colors.white, fontSize: 12,),
        ],
      ),
          Divider(
            color: Colors.white,
            thickness: .4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LargeText(text: "Email", textColor: Colors.white, fontSize: 16,),
              SmallText(text: "zeeshanakhtar.ffc@gmail.com", textColor: Colors.white, fontSize: 12,),
            ],
          ),
          CustomButton(text: "Edit", onTap: (){
            Get.to(ScreenEditProfile());
          })
        ],
      ).marginSymmetric(
        horizontal: 8
      ),
    );
  }
}
