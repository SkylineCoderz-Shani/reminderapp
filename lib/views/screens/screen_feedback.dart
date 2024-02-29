import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminderapp/helpers/constants/colors.dart';
import 'package:reminderapp/widgets/custom_button.dart';
import 'package:reminderapp/widgets/custom_container_textfield.dart';
import 'package:reminderapp/widgets/small_text.dart';

class ScreenFedback extends StatelessWidget {
  const ScreenFedback({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: appColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LargeText(
            text: "Feedback/Complain",
            fontSize: 14,
            textColor: Colors.white,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: LargeText(
                text: "Name",
                textColor: Colors.white,
                fontSize: 12,
              )),
          CustomStyledTextField(
            hintText: "Name",
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: LargeText(
                text: "Email",
                textColor: Colors.white,
                fontSize: 12,
              )),
          CustomStyledTextField(
            hintText: "Email",
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: LargeText(
                text: "Mobile(With Country Code)",
                textColor: Colors.white,
                fontSize: 12,
              )),
          CustomStyledTextField(
            hintText: "Mobile No",
          ),
          Container(
            height: 200,
            width: Get.width,
            decoration: BoxDecoration(
              color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.white,
                )),
            child: TextField(
              maxLength: 5000,
              decoration: InputDecoration.collapsed(
                  hintText: "Feedback",
                  hintStyle: TextStyle(color: Colors.black)),
            ).marginSymmetric(
              horizontal: 10
            ),
          ),
          CustomButton(text: "Submit", onTap: () {}),
        ],
      ).marginSymmetric(horizontal: 6),
    );
  }
}
