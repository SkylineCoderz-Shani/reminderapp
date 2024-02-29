import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminderapp/helpers/constants/colors.dart';
import 'package:reminderapp/views/screens/screen_home.dart';
import 'package:reminderapp/widgets/custom_button.dart';
import 'package:reminderapp/widgets/custom_container_textfield.dart';
import 'package:reminderapp/widgets/small_text.dart';

class ScreenEditFolloup extends StatelessWidget {
  const ScreenEditFolloup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.back(
            result: true
          );
        }, icon: Icon(Icons.arrow_back_ios, color: Colors.white,)),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: LargeText(text: "Add Folloup", textColor: Colors.white, fontSize: 16,),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SmallText(text: "Name", textColor: Colors.white, fontSize: 16,),
            CustomStyledTextField(hintText: "Name"),
            SmallText(text: "Mobile No", textColor: Colors.white, fontSize: 16,),
            CustomStyledTextField(hintText: "Mobile"),
            SmallText(text: "Address", textColor: Colors.white, fontSize: 16,),
            CustomStyledTextField(hintText: "Address"),
            SmallText(text: "Note", textColor: Colors.white, fontSize: 16,),
            CustomStyledTextField(hintText: "Note"),
            SmallText(text: "Status", textColor: Colors.white, fontSize: 16,),
            CustomStyledTextField(hintText: "Status"),
            SmallText(text: "Follow Date", textColor: Colors.white, fontSize: 16,),
            CustomStyledTextField(hintText: "Follow Date"),
            SmallText(text: "Country", textColor: Colors.white, fontSize: 16,),
            CustomStyledTextField(hintText: "Country"),
            SmallText(text: "State", textColor: Colors.white, fontSize: 16,),
            CustomStyledTextField(hintText: "State"),
            SmallText(text: "City", textColor: Colors.white, fontSize: 16,),
            CustomStyledTextField(hintText: "City"),
            SizedBox(
              height: 10,
            ),
            CustomButton(text: "Submit", onTap: (){
              Get.to(ScreenHomePage());
            })
          ],
        ).marginSymmetric(
          horizontal: 6
        ),
      ),
    );
  }
}
