import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reminderapp/helpers/constants/colors.dart';
import 'package:reminderapp/views/screens/screen_addFolloup.dart';
import 'package:reminderapp/views/screens/screen_editFolloup.dart';
import 'package:reminderapp/views/screens/screen_feedback.dart';
import 'package:reminderapp/views/screens/screen_profile.dart';
import 'package:reminderapp/views/screens/screen_subscriptionPurchases.dart';
import 'package:reminderapp/widgets/custom_button.dart';
import 'package:reminderapp/widgets/custom_container_textfield.dart';
import 'package:reminderapp/widgets/custom_image.dart';
import 'package:reminderapp/widgets/small_text.dart';

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green.shade400,
        onPressed: () {},
        child: IconButton(
          onPressed: () {
            Get.to(ScreenEditFolloup());
          },
          icon: Icon(
            CupertinoIcons.add_circled_solid,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
      backgroundColor: appColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    scrollable: true,
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SmallText(
                          text: "Filters",
                          textColor: Colors.black,
                          fontSize: 16,
                        ),
                        SmallText(
                          text: "Folloup Date",
                          textColor: Colors.black,
                          fontSize: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: SmallText(text: "From Date", textColor: Colors.black, fontSize: 16,),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: SmallText(text: "To Date", textColor: Colors.black, fontSize: 16,),
                              ),
                            ),
                          ],
                        ),
                        SmallText(text: "Country", textColor: Colors.black, fontSize: 16,),
                        CustomStyledTextField(hintText: ""),
                        SmallText(text: "State", textColor: Colors.black, fontSize: 16,),
                        CustomStyledTextField(hintText: ""),
                        SmallText(text: "City", textColor: Colors.black, fontSize: 16,),
                        CustomStyledTextField(hintText: ""),
                      ],
                    ),
                    actions: <Widget>[
                      CustomButton(text: "Filter", onTap: (){
                        Get.back(result: true);
                      }),
                    ],
                  );
                },
              );
            },
            icon: Image.asset("assets/icons/filter_icon.png", color: Colors.white,height: 30),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        width: Get.width * .7,
        child: DrawerHeader(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  LargeText(
                    text: "Folloup",
                    textColor: Colors.white,
                  ),
                  SmallText(
                    text: "PRO",
                    textColor: Colors.white,
                  ),
                ],
              ),
              Row(
                children: [
                  CustomImage(
                    name: "logo",
                    height: 50,
                  ),
                  Column(
                    children: [
                      SmallText(
                        text: "Zeeshan",
                        textColor: Colors.white,
                      ),
                      SmallText(
                        text: "Pakistan",
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                      )),
                  LargeText(
                    text: "Home",
                    textColor: Colors.white,
                    fontSize: 18,
                  )
                ],
              ),
              InkWell(
                onTap: () {
                  Get.to(ScreenProfile());
                },
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.person,
                          color: Colors.white,
                        )),
                    LargeText(
                      text: "Profile",
                      textColor: Colors.white,
                      fontSize: 18,
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(ScreenProVersion());
                },
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.production_quantity_limits,
                          color: Colors.white,
                        )),
                    LargeText(
                      text: "PRO",
                      textColor: Colors.white,
                      fontSize: 18,
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.done_all,
                        color: Colors.white,
                      )),
                  LargeText(
                    text: "Done/Delete",
                    textColor: Colors.white,
                    fontSize: 18,
                  )
                ],
              ),
              InkWell(
                onTap: () {
                  Get.to(ScreenFedback());
                },
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.feedback,
                          color: Colors.white,
                        )),
                    LargeText(
                      text: "Feedback",
                      textColor: Colors.white,
                      fontSize: 18,
                    )
                  ],
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: appColor,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.transparent,
                    border: Border.all(
                      color: Colors.white,
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SmallText(
                      text: "Past",
                      textColor: Colors.white,
                    ),
                    LargeText(
                      text: "5",
                      textColor: Colors.white,
                    ),
                  ],
                ),
              ),
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.transparent,
                    border: Border.all(
                      color: Colors.white,
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SmallText(
                      text: "Today",
                      textColor: Colors.white,
                    ),
                    LargeText(
                      text: "23",
                      textColor: Colors.white,
                    ),
                  ],
                ),
              ),
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.transparent,
                    border: Border.all(
                      color: Colors.white,
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SmallText(
                      text: "Tommorow",
                      textColor: Colors.white,
                    ),
                    LargeText(
                      text: "12",
                      textColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: Get.height * .17,
            width: Get.width,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Colors.white,
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LargeText(
                      fontSize: 10,
                      text: "Folloup Date:- 10-02-2023",
                      textColor: Colors.white,
                    ),
                    SmallText(
                      text: "on hase tyare time aahi j batvse",
                      textColor: Colors.red,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 20,
                        ),
                        SmallText(
                          fontSize: 12,
                          text: "Ravi Patel",
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.red,
                          size: 20,
                        ),
                        SmallText(
                          text: "India, Gujarat ,Ahmedabad",
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.phone_circle,
                        color: Colors.white,
                        size: 20,
                      ),
                      SmallText(
                        text: "+91 9876543210",
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.stopwatch,
                          color: Colors.white,
                        ),
                        SmallText(
                          text: "Pending",
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.menu_book_rounded,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        SmallText(
                          text: "Product order mate call kar...",
                          textColor: Colors.white,
                        )
                      ],
                    )
                  ],
                )
              ],
            ).marginSymmetric(horizontal: 10, vertical: 10),
          ),
           InkWell(
             onTap: (){
               Get.to(ScreenAddFolloup());
             },
             child: Container(
                height: Get.height * .17,
                width: Get.width,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Colors.white,
                    )),
                child: Center(
                  child: LargeText(
                    text: "Folloup detail",
                    textColor: Colors.white,
                  ),
                ),
              ),
           ),

          Container(
            height: Get.height * .17,
            width: Get.width,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Colors.white,
                )),
            child: Center(
              child: LargeText(
                text: "Folloup detail",
                textColor: Colors.white,
              ),
            ),
          ),
        ],
      ).marginSymmetric(horizontal: 6),
    );
  }
}
