import 'package:kidney_disease/core/constant/image.dart';
import 'package:kidney_disease/view/prevention.view.dart';
import 'package:kidney_disease/view/symptoms.view.dart';
import 'package:kidney_disease/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/Animation/animation_scale_widget.dart';
import '../core/constant/colors.dart';
import '../core/locale/locale_controller.dart';
import 'checkup.view.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  static const routeName = "/HomeView";

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: scecondaryColor,
          // centerTitle: true,
          title: SizedBox(
            width: 100,
            child: Image.asset(
              "assets/icons/dengue2.png",
              color: scecondaryColor,
              width: 50,
              height: 50,
              // color: mainColor,
            ),
          ),
          actions: [
            IconButton(
                icon: const Icon(Icons.translate_rounded),
                // color: scecondaryColor,
                onPressed: () {
                  LocaleController localeController = Get.find();
                  if (localeController.languageCode == "en") {
                    localeController.chingeLanguage(languageCode: "ar");
                  } else {
                    localeController.chingeLanguage(languageCode: "en");
                  }
                })
          ],
        ),
        //  endDrawer: MyDrawer(),
        body: Container(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
          child: AnimationSlideWidget(
            horizontalOffset: 0,
            verticalOffset: -200,
            children: <Widget>[
              const SizedBox(height: 20),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: buttonInfo.length,
                itemBuilder: (context, index) => ButtonWidget(
                  pathImage: buttonInfo[index]["icons"],
                  text: buttonInfo[index]["name"].toString().tr,
                  onTap: () {
                    Get.toNamed(buttonInfo[index]["page"]);
                  },
                ),
              ),
            ],
          ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
        bottomNavigationBar: SizedBox(
          width: Get.width,
          height: 20,
          child: Container(
            width: Get.width,
            height: 28,
            color: mainColor,
          ),
        ));
  }
}

final List buttonInfo = [
  {
    "name": TypeImage.CHECKUP.name,
    "icons": TypeImage.CHECKUP.value(),
    "page": CheckupView.routeName,
  },
  {
    "name": TypeImage.PREVENTION.name,
    "icons": TypeImage.PREVENTION.value(),
    "page": PreventionView.routeName,
  },
  {
    "name": TypeImage.SYMPTOMS.name,
    "icons": TypeImage.SYMPTOMS.value(),
    "page": SymptomsView.routeName,
  },
];
