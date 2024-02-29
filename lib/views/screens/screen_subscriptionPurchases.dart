import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminderapp/helpers/constants/colors.dart';
import 'package:reminderapp/views/screens/screeen_yearlySubscription.dart';
import 'package:reminderapp/views/screens/screen_monthlySubscription.dart';
import 'package:reminderapp/widgets/small_text.dart';

class ScreenProVersion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: appColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(onPressed: (){
            Get.back(result: true);
          }, icon: Icon(Icons.arrow_back_ios, color: Colors.white,)),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LargeText(text: "PRO", textColor: Colors.white, fontSize: 16,),
            SmallText(text: "Subscription", textColor: Colors.white, fontSize: 16,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.white
                )
              ),
              child: TabBar(
                indicatorColor: Colors.white,
                labelColor: Colors.white,
                tabs: [
                  Tab(text: 'Month',),
                  Tab(text: 'Year'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ScreenMonthlySubscription(),
                  ScreenYearlySubscription(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
