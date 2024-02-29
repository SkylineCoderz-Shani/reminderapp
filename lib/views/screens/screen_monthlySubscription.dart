import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminderapp/helpers/constants/colors.dart';
import 'package:reminderapp/widgets/custom_button.dart';
import 'package:reminderapp/widgets/small_text.dart';

class ScreenMonthlySubscription extends StatelessWidget {
  const ScreenMonthlySubscription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: Get.height*.7,
            width: Get.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.white,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LargeText(text: "199/", textColor: Colors.white, fontSize: 40,),
                    SmallText(text: "Month", textColor: Colors.white, fontSize: 16,),
                  ],
                ),

                SmallText(text: "- in app purchase", textColor: Colors.white, fontSize: 16,),
                SmallText(text: "- data export in excel by email", textColor: Colors.white, fontSize: 16,),
                SmallText(text: "- no ads ", textColor: Colors.white, fontSize: 16,),
                SmallText(text: "- pro marking", textColor: Colors.white, fontSize: 16,),
                SmallText(text: "- unlimited reminder set", textColor: Colors.white, fontSize: 16,),
                Align(
                    alignment: Alignment.center,
                    child: CustomButton(text: "Pro Buy", onTap: (){}, width: Get.width*.5,)),
              ],
            ),
          ),
        ],
      ).marginSymmetric(
        horizontal: 6
      ),
    );
  }
}
