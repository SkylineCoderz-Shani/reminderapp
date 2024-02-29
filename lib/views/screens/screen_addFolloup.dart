import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminderapp/helpers/constants/colors.dart';
import 'package:reminderapp/widgets/custom_button.dart';
import 'package:reminderapp/widgets/small_text.dart';

class ScreenAddFolloup extends StatelessWidget {
  const ScreenAddFolloup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      appBar: AppBar(
        centerTitle: true,
        title: LargeText(text: "Folloup", textColor: Colors.white, fontSize: 16,),
        backgroundColor: appColor,
        leading: IconButton(onPressed: (){
          Get.back(
            result: true,
          );
        }, icon: Icon(Icons.arrow_back_ios, color: Colors.white,)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 60,
                width: 60,
                color: Colors.red,
              ),

            ),
          Row(
            children: [
              Icon(Icons.person, color: Colors.white,),
              SizedBox(
                width: 8,
              ),
              SmallText(text: "Rave Patel", textColor: Colors.white, fontSize: 16,),
            ],
          ),
          Row(
            children: [
              Icon(Icons.phone, color: Colors.green,),
              SizedBox(
                width: 8,
              ),
              SmallText(text: "+91 9876543210", textColor: Colors.white, fontSize: 16,),
            ],
          ),
          Row(
            children: [
              Icon(Icons.watch_later_outlined, color: Colors.red,),
              SizedBox(
                width: 8,
              ),
              SmallText(text: "Pending", textColor: Colors.white, fontSize: 16,),
            ],
          ),
          Row(
            children: [
              Icon(Icons.person_pin_outlined, color: Colors.blue,),
              SizedBox(
                width: 8,
              ),
              SmallText(text: "10-01-2023", textColor: Colors.white, fontSize: 16,),
            ],
          ),
          Row(
            children: [
              Icon(Icons.location_on_sharp, color: Colors.red,),
              SizedBox(
                width: 8,
              ),
              SmallText(text: "India, Gujarat ,Ahmedabad", textColor: Colors.white, fontSize: 16,),
            ],
          ),
          Row(
            children: [
              Icon(Icons.note_add_rounded, color: Colors.yellow,),
              SizedBox(
                width: 8,
              ),
              SmallText(text: "Product order mate call karvanochhe\npis bhav rs 450 kidho chhe", textColor: Colors.white, fontSize: 16,),
            ],
          ),
          CustomButton(text: "Edit", onTap: (){},
          width: Get.width*.5,
          ),
          Row(
            children: [
              Icon(Icons.done, color: Colors.green,),
              SizedBox(
                width: 8,
              ),
              SmallText(text: "Done :- 15-01-2023 09:23 AM", textColor: Colors.green, fontSize: 16,),
            ],
          ),
          Row(
            children: [
              SmallText(text: "Edit_Date:-", textColor: Colors.red, fontSize: 16,),
              SizedBox(
                width: 8,
              ),
              SmallText(text: "15-01-2023 09:23 AM", textColor: Colors.red, fontSize: 16,),
            ],
          ),
          Row(
            children: [
              SmallText(text: "Edit_Date:-", textColor: Colors.red, fontSize: 16,),
              SizedBox(
                width: 8,
              ),
              SmallText(text: "15-01-2023 09:23 AM", textColor: Colors.red, fontSize: 16,),
            ],
          ),
          Row(
            children: [
              SmallText(text: "Create:-", textColor: Colors.red, fontSize: 16,),
              SizedBox(
                width: 8,
              ),
              SmallText(text: "15-01-2023 09:23 AM", textColor: Colors.red, fontSize: 16,),
            ],
          ),
        ],
      ).marginSymmetric(
        horizontal: 6
      ),
    );
  }
}
